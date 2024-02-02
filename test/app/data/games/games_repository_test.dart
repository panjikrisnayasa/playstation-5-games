import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:playstation_5_games/app/app_constants.dart';
import 'package:playstation_5_games/app/data/games/games_repository.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/data/games/model/games_ordering.dart';
import 'package:playstation_5_games/app/data/pagination.dart';
import 'package:playstation_5_games/app/network/http_client.dart';
import 'package:playstation_5_games/app/utils/date_time_formatter.dart';

class MockHttpClient extends Mock implements HttpClient {}

void main() {
  MockHttpClient? httpClient;
  GamesRepository? repository;

  setUp(() {
    httpClient = MockHttpClient();
    final container = ProviderContainer(
      overrides: [
        HttpClient.provider.overrideWithValue(httpClient!),
      ],
    );
    repository = container.read(GamesRepository.provider);
  });

  tearDown(() {
    httpClient = null;
    repository = null;
  });

  group('Validate getPlaystation5Games()', () {
    final currentDateTime = DateTime.now();
    final startDate = DateTime(
      currentDateTime.year - 1,
      currentDateTime.month,
      currentDateTime.day,
    );
    final endDate = DateTime(
      currentDateTime.year,
      currentDateTime.month,
      currentDateTime.day,
    );

    test('getPlaystation5Games() success', () async {
      when(
        () => httpClient?.get<Map<String, dynamic>>(
          path: '/api/games',
          queryParameters: {
            'page': 1,
            'page_size': 20,
            'platform': AppConstants.playstation5PlatformCode,
            'dates':
                '${startDate.formatDateToString},${endDate.formatDateToString}',
            'ordering': GamesOrdering.releasedDescending.code,
          },
        ),
      ).thenAnswer((_) async => _mockPlaystation5GamesResponse);

      final result = await repository?.getPlaystation5Games();

      expect(
        result,
        _expectedPlaystation5Games,
      );
    });

    test('getPlaystation5Games() got exception', () async {
      final exception = Exception('error');

      when(
        () => httpClient?.get<Map<String, dynamic>>(
          path: '/api/games',
          queryParameters: {
            'page': 1,
            'page_size': 20,
            'platform': AppConstants.playstation5PlatformCode,
            'dates':
                '${startDate.formatDateToString},${endDate.formatDateToString}',
            'ordering': GamesOrdering.releasedDescending.code,
          },
        ),
      ).thenThrow(exception);

      expect(
        () async => repository?.getPlaystation5Games(),
        throwsA(exception),
      );
    });
  });

  group('Validate getGameDetails()', () {
    test('getGameDetails() success', () async {
      when(
        () => httpClient?.get<Map<String, dynamic>>(
          path: '/api/games/$_gameId',
        ),
      ).thenAnswer((_) async => _mockGameDetailsResponse);

      final result = await repository?.getGameDetails(id: _gameId);

      expect(
        result,
        _expectedGameDetails,
      );
    });

    test('getGameDetails() got exception', () async {
      final exception = Exception('error');

      when(
        () => httpClient?.get<Map<String, dynamic>>(
          path: '/api/games/$_gameId',
        ),
      ).thenThrow(exception);

      expect(
        () async => repository?.getGameDetails(id: _gameId),
        throwsA(exception),
      );
    });
  });
}

const _gameId = 972995;

final _mockPlaystation5GamesResponse = {
  "count": 1,
  "next": null,
  "previous": null,
  "results": [
    {
      "slug": "grand-theft-aito-vi",
      "name": "Grand Theft Auto VI",
      "playtime": 100,
      "platforms": [
        {
          "platform": {
            "id": 187,
            "name": "PlayStation 5",
            "slug": "playstation5",
            "image_background":
                'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
          },
          "released_at": "2025-01-12",
          "requirements": {
            "minimum": 'minimum',
            "recommended": 'recommended',
          }
        },
      ],
      "released": "2025-09-01",
      "tba": true,
      "background_image":
          "https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg",
      "rating": 12,
      "rating_top": 13,
      "ratings_count": 14,
      "reviews_text_count": 15,
      "added": 61,
      "metacritic": 16,
      "suggestions_count": 478,
      "updated": "2024-01-13",
      "id": _gameId,
      "esrb_rating": {
        "id": 6,
        "name": "Rating Pending",
        "slug": "rating-pending",
      },
      "publishers": [
        {
          "id": 7,
          "name": 'publisher_name',
          "slug": 'publisher_slug',
          "games_count": 1000,
          "image_background":
              'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
        },
      ],
      "genres": [
        {
          "image_background":
              'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
          "games_count": 1001,
          "slug": 'genre_slug',
          "id": 8,
          "name": 'genre_name',
        },
      ],
      "description_raw": 'description_raw',
      "stores": [
        {
          "id": 8,
          "url": 'https://store.steampowered.com/',
          "store": {
            "id": 9,
            "name": 'steam',
            "slug": 'steam_slug',
            "image_background":
                'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
            "domain": 'https://store.steampowered.com/',
          },
        },
      ],
      "user_game": 1000000,
    }
  ]
};

final _expectedPlaystation5Games = Pagination(
  count: 1,
  results: [
    Game(
      slug: 'grand-theft-aito-vi',
      name: 'Grand Theft Auto VI',
      playtime: 100,
      platforms: [
        Platform(
            platform: const PlatformData(
              id: 187,
              name: 'PlayStation 5',
              slug: 'playstation5',
              imageBackground:
                  'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
            ),
            releasedAt: DateTime(2025, 1, 12),
            requirements: const Requirements(
                minimum: 'minimum', recommended: 'recommended')),
      ],
      released: DateTime(2025, 9, 1),
      tba: true,
      backgroundImage:
          'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
      rating: 12,
      ratingTop: 13,
      ratingsCount: 14,
      reviewsTextCount: 15,
      added: 61,
      metacritic: 16,
      suggestionsCount: 478,
      updated: DateTime(2024, 1, 13),
      id: _gameId,
      esrbRating: const EsrbRating(
        id: 6,
        name: "Rating Pending",
        slug: "rating-pending",
      ),
      publishers: [
        const Publisher(
          id: 7,
          name: 'publisher_name',
          slug: 'publisher_slug',
          gamesCount: 1000,
          imageBackground:
              'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
        ),
      ],
      genres: [
        const Genre(
          imageBackground:
              'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
          gamesCount: 1001,
          slug: 'genre_slug',
          id: 8,
          name: 'genre_name',
        ),
      ],
      descriptionRaw: 'description_raw',
      stores: [
        const Store(
          id: 8,
          url: 'https://store.steampowered.com/',
          store: StoreData(
            id: 9,
            name: 'steam',
            slug: 'steam_slug',
            imageBackground:
                'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
            domain: 'https://store.steampowered.com/',
          ),
        )
      ],
      userGame: 1000000,
    )
  ],
);

final _mockGameDetailsResponse = {
  "slug": "grand-theft-aito-vi",
  "name": "Grand Theft Auto VI",
  "playtime": 100,
  "platforms": [
    {
      "platform": {
        "id": 187,
        "name": "PlayStation 5",
        "slug": "playstation5",
        "image_background":
            'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
      },
      "released_at": "2025-01-12",
      "requirements": {
        "minimum": 'minimum',
        "recommended": 'recommended',
      }
    },
  ],
  "released": "2025-09-01",
  "tba": true,
  "background_image":
      "https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg",
  "rating": 12,
  "rating_top": 13,
  "ratings_count": 14,
  "reviews_text_count": 15,
  "added": 61,
  "metacritic": 16,
  "suggestions_count": 478,
  "updated": "2024-01-13",
  "id": _gameId,
  "esrb_rating": {
    "id": 6,
    "name": "Rating Pending",
    "slug": "rating-pending",
  },
  "publishers": [
    {
      "id": 7,
      "name": 'publisher_name',
      "slug": 'publisher_slug',
      "games_count": 1000,
      "image_background":
          'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
    },
  ],
  "genres": [
    {
      "image_background":
          'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
      "games_count": 1001,
      "slug": 'genre_slug',
      "id": 8,
      "name": 'genre_name',
    },
  ],
  "description_raw": 'description_raw',
  "stores": [
    {
      "id": 8,
      "url": 'https://store.steampowered.com/',
      "store": {
        "id": 9,
        "name": 'steam',
        "slug": 'steam_slug',
        "image_background":
            'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
        "domain": 'https://store.steampowered.com/',
      },
    },
  ],
  "user_game": 1000000,
};

final _expectedGameDetails = Game(
  slug: 'grand-theft-aito-vi',
  name: 'Grand Theft Auto VI',
  playtime: 100,
  platforms: [
    Platform(
        platform: const PlatformData(
          id: 187,
          name: 'PlayStation 5',
          slug: 'playstation5',
          imageBackground:
              'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
        ),
        releasedAt: DateTime(2025, 1, 12),
        requirements:
            const Requirements(minimum: 'minimum', recommended: 'recommended')),
  ],
  released: DateTime(2025, 9, 1),
  tba: true,
  backgroundImage:
      'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
  rating: 12,
  ratingTop: 13,
  ratingsCount: 14,
  reviewsTextCount: 15,
  added: 61,
  metacritic: 16,
  suggestionsCount: 478,
  updated: DateTime(2024, 1, 13),
  id: _gameId,
  esrbRating: const EsrbRating(
    id: 6,
    name: "Rating Pending",
    slug: "rating-pending",
  ),
  publishers: [
    const Publisher(
      id: 7,
      name: 'publisher_name',
      slug: 'publisher_slug',
      gamesCount: 1000,
      imageBackground:
          'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
    ),
  ],
  genres: [
    const Genre(
      imageBackground:
          'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
      gamesCount: 1001,
      slug: 'genre_slug',
      id: 8,
      name: 'genre_name',
    ),
  ],
  descriptionRaw: 'description_raw',
  stores: [
    const Store(
      id: 8,
      url: 'https://store.steampowered.com/',
      store: StoreData(
        id: 9,
        name: 'steam',
        slug: 'steam_slug',
        imageBackground:
            'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
        domain: 'https://store.steampowered.com/',
      ),
    )
  ],
  userGame: 1000000,
);
