import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:playstation_5_games/app/data/games/games_repository.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/data/pagination.dart';
import 'package:playstation_5_games/features/game_list/game_list_screen.dart';
import 'package:playstation_5_games/features/game_list/widgets/game_card.dart';

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
      () => _mockGamesRepository.getPlaystation5Games(),
    ).thenAnswer(
      (_) async => Pagination(
        next: 'page-2-url',
        count: 40,
        results: _mockResponseList(),
      ),
    );

    when(
      () => _mockGamesRepository.getPlaystation5Games(page: 2),
    ).thenAnswer(
      (_) async => Pagination(
        previous: 'page-1-url',
        count: 40,
        results: _mockResponseList(page: 2),
      ),
    );
  });

  testWidgets(
      'GameListScreen should show correct content when all data loaded successfully',
      (tester) async {
    await tester.pumpScreen();

    expect(find.text('Playstation 5 Games'), findsOneWidget);
    expectGameListFound();

    verify(
      () => _mockGamesRepository.getPlaystation5Games(),
    );
  });

  testWidgets(
      'GameListScreen should show correct content when got error and reload the screen when press Try Again button',
      (tester) async {
    when(
      () => _mockGamesRepository.getPlaystation5Games(),
    ).thenThrow(Exception());

    await tester.pumpScreen();

    final tryAgainButton = find.descendant(
      of: find.byType(ElevatedButton),
      matching: find.text('Try Again'),
    );

    expectGameListNotFound();
    expect(find.text('Failed to fetch data'), findsOneWidget);
    expect(tryAgainButton, findsOneWidget);

    when(
      () => _mockGamesRepository.getPlaystation5Games(),
    ).thenAnswer(
      (_) async => Pagination(
        next: 'page-2-url',
        count: 40,
        results: _mockResponseList(),
      ),
    );

    await tester.tap(tryAgainButton);
    await tester.pumpAndSettle();

    expectGameListFound();

    verify(
      () => _mockGamesRepository.getPlaystation5Games(),
    ).called(2);
  });

  testWidgets(
      'GameListScreen should show correct content when game list is empty',
      (tester) async {
    when(
      () => _mockGamesRepository.getPlaystation5Games(),
    ).thenAnswer((_) async {
      return const Pagination(
        results: [],
      );
    });

    await tester.pumpScreen();

    expectGameListNotFound();
    expect(find.text('No Playstation 5 Games'), findsOneWidget);

    verify(
      () => _mockGamesRepository.getPlaystation5Games(),
    );
  });

  group('GameListScreen load next page test case', () {
    final pageOneLastItem = _mockResponseList().last;
    final pageTwoFirstItem = _mockResponseList(page: 2).first;

    testWidgets('Should load next page successfully', (tester) async {
      await tester.pumpScreen();

      expectGameListFound();

      await tester.scrollUntil(pageOneLastItem.id);

      expectGameItem(itemId: pageTwoFirstItem.id, matcher: findsOneWidget);

      verifyInOrder([
        () => _mockGamesRepository.getPlaystation5Games(),
        () => _mockGamesRepository.getPlaystation5Games(page: 2),
      ]);
    });

    testWidgets(
        'Should show Try Again button when load next page got error, but after tap the Try Again button the load next page success',
        (tester) async {
      when(
        () => _mockGamesRepository.getPlaystation5Games(),
      ).thenAnswer(
        (_) async => Pagination(
          next: 'page-2-url',
          count: 40,
          results: _mockResponseList(),
        ),
      );

      when(
        () => _mockGamesRepository.getPlaystation5Games(page: 2),
      ).thenThrow(Exception());

      await tester.pumpScreen();

      expectGameListFound();

      await tester.scrollUntil(pageOneLastItem.id);

      when(
        () => _mockGamesRepository.getPlaystation5Games(page: 2),
      ).thenAnswer(
        (_) async => Pagination(
          previous: 'page-1-url',
          count: 40,
          results: _mockResponseList(page: 2),
        ),
      );

      final tryAgainButton = find.descendant(
        of: find.byType(ElevatedButton),
        matching: find.text('Try Again'),
      );

      expect(tryAgainButton, findsOneWidget);

      await tester.tap(tryAgainButton);
      await tester.pumpAndSettle();

      expectGameItem(itemId: pageTwoFirstItem.id, matcher: findsOneWidget);

      verifyInOrder([
        () => _mockGamesRepository.getPlaystation5Games(),
        () => _mockGamesRepository.getPlaystation5Games(page: 2),
        () => _mockGamesRepository.getPlaystation5Games(page: 2),
      ]);
    });
  });
}

void expectGameListFound() {
  expect(find.byKey(const Key('game_list')), findsOneWidget);
  expect(find.byType(GameCard), findsWidgets);
}

void expectGameListNotFound() {
  expect(find.byKey(const Key('game_list')), findsNothing);
  expect(find.byType(GameCard), findsNothing);
}

void expectGameItem({
  required int itemId,
  required Matcher matcher,
}) {
  expect(
    find.byKey(Key('game_item_$itemId')),
    matcher,
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
        child: const GameListScreen(),
      ),
    );

    await pumpAndSettle();
  }

  Future<void> scrollUntil(int itemId) async {
    await dragUntilVisible(
      find.byKey(
        Key('game_item_$itemId'),
      ),
      find.byKey(const Key('game_list')),
      const Offset(0, -1000),
    );

    await pumpAndSettle();
  }
}

List<Game> _mockResponseList({
  int page = 1,
}) {
  final startId = 1 + (page - 1) * 20;

  return List.generate(
    20,
    (index) {
      final id = startId + index;

      return Game(
        added: id,
        backgroundImage: 'backgroundImage $id',
        esrbRating: EsrbRating(
          id: id,
          name: 'name $id',
          slug: 'slug $id',
        ),
        id: id,
        metacritic: id,
        name: 'name $id',
        platforms: [
          Platform(
            platform: PlatformData(
              id: id,
              slug: 'slug $id',
              name: 'name $id',
            ),
            releasedAt: DateTime(2024, 1, 31),
            requirements: Requirements(
              minimum: 'minimum $id',
              recommended: 'recommended $id',
            ),
          )
        ],
        playtime: id,
        rating: id.toDouble(),
        ratingsCount: id,
        ratingTop: id,
        released: DateTime(2024, 1, 31),
        reviewsTextCount: id,
        slug: 'slug $id',
        suggestionsCount: id,
        tba: Random().nextBool(),
        updated: DateTime(2024, 1, 31),
      );
    },
  );
}
