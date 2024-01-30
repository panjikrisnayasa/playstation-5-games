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

  void onScreenLoaded() {
    unawaited(_getPlaystation5Games());
  }

  void onReload() {
    unawaited(_getPlaystation5Games());
  }

  Future<void> _getPlaystation5Games() async {
    state = state.copyWith(gameList: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () => _gamesRepository.getPlaystation5Games(),
    );

    if (!mounted) return;

    state = state.copyWith(gameList: result);
  }
}

@freezed
class GameListUiState with _$GameListUiState {
  const factory GameListUiState({
    @Default(AsyncValue.loading()) AsyncValue<List<Game>> gameList,
  }) = _GameListUiState;
}
