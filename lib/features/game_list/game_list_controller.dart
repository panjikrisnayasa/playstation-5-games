import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playstation_5_games/app/data/games/games_repository.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';

part 'game_list_controller.freezed.dart';

class GameListController extends StateNotifier<GameListUiState> {
  GameListController(this._gamesRepository) : super(const GameListUiState());

  static final provider =
      StateNotifierProvider.autoDispose<GameListController, GameListUiState>(
    (ref) => GameListController(
      ref.watch(GamesRepository.provider),
    ),
  );

  final GamesRepository _gamesRepository;

  int _currentPage = 1;
  bool _isLastPage = false;
  late List<Game> _currentData;

  void onScreenLoaded() {
    unawaited(_getPlaystation5Games());
  }

  void onReload() {
    unawaited(_getPlaystation5Games());
  }

  Future<void> _getPlaystation5Games() async {
    state = state.copyWith(gameList: const AsyncValue.loading());

    _currentPage = 1;

    final result = await AsyncValue.guard(
      () => _gamesRepository.getPlaystation5Games(),
    );

    if (!mounted) return;

    if (result is AsyncData) {
      final value = result.value!;

      _currentData = value.results;
      _isLastPage = value.next.isEmpty;

      state = state.copyWith(
        gameList: AsyncValue.data(_currentData),
      );
    } else if (result is AsyncError) {
      state = state.copyWith(
        gameList: AsyncValue.error(result.error!, result.stackTrace!),
      );
    }
  }

  Future<void> loadMorePlaystation5Games() async {
    if (state.gameList is! AsyncData ||
        state.nextPageGameList is AsyncLoading ||
        _isLastPage) return;

    state = state.copyWith(nextPageGameList: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () async => _gamesRepository.getPlaystation5Games(
        page: _currentPage + 1,
      ),
    );

    if (!mounted) return;

    if (result is AsyncData) {
      final value = result.value!;

      _currentPage++;
      _currentData.addAll(value.results);

      _isLastPage = value.next.isEmpty;

      state = state.copyWith(
        gameList: AsyncValue.data([..._currentData]),
        nextPageGameList: const AsyncValue.data(null),
      );
    } else {
      state = state.copyWith(
        nextPageGameList: AsyncValue.error(result.error!, result.stackTrace!),
      );
    }
  }
}

@freezed
class GameListUiState with _$GameListUiState {
  const factory GameListUiState({
    @Default(AsyncValue.loading()) AsyncValue<List<Game>> gameList,
    @Default(AsyncValue.data(null)) AsyncValue<void> nextPageGameList,
  }) = _GameListUiState;
}
