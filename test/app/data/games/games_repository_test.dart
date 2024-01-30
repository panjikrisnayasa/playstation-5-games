import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:playstation_5_games/app/app_constants.dart';
import 'package:playstation_5_games/app/data/games/games_repository.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/network/http_client.dart';

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
    test('getPlaystation5Games() success', () async {
      when(
        () => httpClient?.get<Map<String, dynamic>>(
          path: '/api/games',
          queryParameters: {
            'page': 1,
            'page_size': 20,
            'platform': AppConstants.playstation5PlatformCode,
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
          },
        ),
      ).thenThrow(exception);

      expect(
        () async => repository?.getPlaystation5Games(),
        throwsA(exception),
      );
    });
  });
}

final _mockPlaystation5GamesResponse = {
  "count": 1000,
  "next": "https://api.rawg.io/api/games?page=2&page_size=1&platforms=187",
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
      "id": 972995,
      "esrb_rating": {
        "id": 6,
        "name": "Rating Pending",
        "slug": "rating-pending",
      },
    }
  ]
};

final _expectedPlaystation5Games = [
  Game(
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
    metaCritic: 0,
    suggestionsCount: 478,
    updated: DateTime(2024, 1, 13),
    id: 972995,
    esrbRating: const EsrbRating(
      id: 6,
      name: "Rating Pending",
      slug: "rating-pending",
    ),
  ),
];
