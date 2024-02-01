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
    final startDate = DateTime(2023, 1, 31);
    final endDate = DateTime(2024, 1, 31);

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

      final result = await repository?.getPlaystation5Games(
        startDate: startDate,
        endDate: endDate,
      );

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
        () async => repository?.getPlaystation5Games(
          startDate: startDate,
          endDate: endDate,
        ),
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
      "playtime": 0,
      "platforms": [
        {
          "platform": {
            "id": 187,
            "name": "PlayStation 5",
            "slug": "playstation5"
          }
        }
      ],
      "released": "2025-09-01",
      "tba": true,
      "background_image":
          "https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg",
      "rating": 0,
      "rating_top": 0,
      "ratings": [],
      "ratings_count": 0,
      "reviews_text_count": 0,
      "added": 61,
      "metacritic": null,
      "suggestions_count": 478,
      "updated": "2024-01-13",
      "id": _gameId,
      "esrb_rating": {
        "id": 6,
        "name": "Rating Pending",
        "slug": "rating-pending",
      },
    }
  ]
};

final _expectedPlaystation5Games = Pagination(
  count: 1,
  results: [
    Game(
      slug: 'grand-theft-aito-vi',
      name: 'Grand Theft Auto VI',
      playtime: 0,
      platforms: <Platform>[
        const Platform(
          platform: PlatformData(
              id: 187, name: 'PlayStation 5', slug: 'playstation5'),
        ),
      ],
      released: DateTime(2025, 9, 1),
      tba: true,
      backgroundImage:
          'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
      rating: 0,
      ratingTop: 0,
      ratings: <Rating>[],
      ratingsCount: 0,
      reviewsTextCount: 0,
      added: 61,
      metacritic: 0,
      suggestionsCount: 478,
      updated: DateTime(2024, 1, 13),
      id: _gameId,
      esrbRating: const EsrbRating(
        id: 6,
        name: "Rating Pending",
        slug: "rating-pending",
      ),
    ),
  ],
);

final _mockGameDetailsResponse = {
  "slug": "grand-theft-aito-vi",
  "name": "Grand Theft Auto VI",
  "playtime": 0,
  "platforms": [
    {
      "platform": {"id": 187, "name": "PlayStation 5", "slug": "playstation5"}
    }
  ],
  "released": "2025-09-01",
  "tba": true,
  "background_image":
      "https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg",
  "rating": 0,
  "rating_top": 0,
  "ratings": [],
  "ratings_count": 0,
  "reviews_text_count": 0,
  "added": 61,
  "metacritic": null,
  "suggestions_count": 478,
  "updated": "2024-01-13",
  "id": _gameId,
  "esrb_rating": {
    "id": 6,
    "name": "Rating Pending",
    "slug": "rating-pending",
  },
};

final _expectedGameDetails = Game(
  slug: 'grand-theft-aito-vi',
  name: 'Grand Theft Auto VI',
  playtime: 0,
  platforms: <Platform>[
    const Platform(
      platform:
          PlatformData(id: 187, name: 'PlayStation 5', slug: 'playstation5'),
    ),
  ],
  released: DateTime(2025, 9, 1),
  tba: true,
  backgroundImage:
      'https://media.rawg.io/media/games/734/7342a1cd82c8997ec620084ae4c2e7e4.jpg',
  rating: 0,
  ratingTop: 0,
  ratings: <Rating>[],
  ratingsCount: 0,
  reviewsTextCount: 0,
  added: 61,
  metacritic: 0,
  suggestionsCount: 478,
  updated: DateTime(2024, 1, 13),
  id: _gameId,
  esrbRating: const EsrbRating(
    id: 6,
    name: "Rating Pending",
    slug: "rating-pending",
  ),
);
