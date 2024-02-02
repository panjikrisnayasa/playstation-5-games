import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:playstation_5_games/app/data/games/games_repository.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/widgets/image_network_widget.dart';
import 'package:playstation_5_games/features/game_details/game_details_screen.dart';

import '../../test_app.dart';
import '../../utils/mock_dependencies.dart';

late MockNavigatorObserver _mockNavigatorObserver;
late MockGamesRepository _mockGamesRepository;

void main() {
  setUp(() {
    registerFallbackValue(MockRoute());

    _mockNavigatorObserver = MockNavigatorObserver();
    _mockGamesRepository = MockGamesRepository();

    when(
      () => _mockGamesRepository.getGameDetails(id: _gameId),
    ).thenAnswer(
      (_) async => _gameDetails,
    );
  });

  testWidgets(
      'GameDetailsScreen should show correct content when all data loaded successfully',
      (tester) async {
    await tester.pumpScreen();

    expect(find.text('Game Details'), findsOneWidget);
    expect(find.byType(ImageNetworkWidget), findsOneWidget);
    expect(find.text(_gameDetails.name), findsOneWidget);
    expect(
      find.text(_gameDetails.genres.map((e) => e.name).toList().toString()),
      findsOneWidget,
    );
    expect(
      find.text('Metacritic score ${_gameDetails.metacritic}'),
      findsOneWidget,
    );
    expect(
      find.text(
        'Rating ${_gameDetails.rating}/${_gameDetails.ratingTop} (${_gameDetails.ratingsCount})',
      ),
      findsOneWidget,
    );
    expect(find.text('Available on'), findsOneWidget);
    expect(
      find.text(
        _gameDetails.platforms.map((e) => e.platform.name).toList().toString(),
      ),
      findsOneWidget,
    );
    expect(find.text('Description'), findsOneWidget);
    expect(find.text(_gameDetails.descriptionRaw), findsOneWidget);
    expect(find.text('Publishers'), findsOneWidget);
    expect(
      find.text(
        _gameDetails.publishers.map((e) => e.name).toList().toString(),
      ),
      findsOneWidget,
    );

    verify(
      () => _mockGamesRepository.getGameDetails(id: _gameId),
    );
  });

  testWidgets(
    'GameDetailsScreen should show error state when getGameDetails() got error, and then tap Try Again button to fetch data successfully',
    (tester) async {
      when(
        () => _mockGamesRepository.getGameDetails(id: _gameId),
      ).thenThrow(Exception());

      await tester.pumpScreen();

      final tryAgainButton = find.descendant(
        of: find.byType(ElevatedButton),
        matching: find.text('Try Again'),
      );

      expect(find.text('Failed to fetch data'), findsOneWidget);
      expect(tryAgainButton, findsOneWidget);

      when(
        () => _mockGamesRepository.getGameDetails(id: _gameId),
      ).thenAnswer(
        (_) async => _gameDetails,
      );

      await tester.tap(tryAgainButton);
      await tester.pumpAndSettle();

      expect(find.text('Failed to fetch data'), findsNothing);
      expect(tryAgainButton, findsNothing);
      expect(find.text(_gameDetails.name), findsOneWidget);

      verify(
        () => _mockGamesRepository.getGameDetails(id: _gameId),
      ).called(2);
    },
  );
}

extension _WidgetTesterExtension on WidgetTester {
  Future<void> pumpScreen() async {
    binding.platformDispatcher.textScaleFactorTestValue = 0.1;

    await pumpWidget(
      TestApp(
        overrides: [
          GamesRepository.provider.overrideWithValue(_mockGamesRepository),
        ],
        navigatorObservers: [_mockNavigatorObserver],
        child: const GameDetailsScreen(id: _gameId),
      ),
    );

    await pumpAndSettle();
  }
}

const _gameId = 1;

final _gameDetails = Game(
  added: 2,
  backgroundImage: 'backgroundImage',
  esrbRating: const EsrbRating(
    id: 3,
    name: 'esrbRating_name',
    slug: 'esrbRating_slug',
  ),
  id: _gameId,
  metacritic: 90,
  name: 'gameDetails_name',
  platforms: [
    Platform(
      platform: const PlatformData(
        id: 4,
        slug: 'platform_slug',
        name: 'platform_name',
      ),
      releasedAt: DateTime(2024, 1, 31),
      requirements: const Requirements(
        minimum: 'requirements_minimum',
        recommended: 'requirements_recommended',
      ),
    )
  ],
  playtime: 1000,
  rating: 4.7,
  ratingsCount: 2000,
  ratingTop: 5,
  released: DateTime(2024, 1, 31),
  reviewsTextCount: 3000,
  slug: 'gameDetails_slug',
  suggestionsCount: 2500,
  tba: false,
  updated: DateTime(2024, 1, 31),
  descriptionRaw: 'gameDetails_descriptionRaw',
  genres: [
    const Genre(name: 'Adventure'),
    const Genre(name: 'Indie'),
  ],
  publishers: [
    const Publisher(name: 'EA Sports'),
  ],
);
