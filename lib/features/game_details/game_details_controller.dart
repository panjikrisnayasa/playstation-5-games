import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playstation_5_games/app/data/games/games_repository.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';

part 'game_details_controller.freezed.dart';

class GameDetailsController extends StateNotifier<GameDetailsUiState> {
  GameDetailsController(this._gamesRepository)
      : super(const GameDetailsUiState());

  static final provider = StateNotifierProvider.autoDispose<
      GameDetailsController, GameDetailsUiState>(
    (ref) => GameDetailsController(
      ref.watch(GamesRepository.provider),
    ),
  );

  final GamesRepository _gamesRepository;

  int _id = 0;

  void onScreenLoaded({
    required int id,
  }) {
    _id = id;

    unawaited(_getGameDetails());
  }

  void onReload() {
    unawaited(_getGameDetails());
  }

  Future<void> _getGameDetails() async {
    state = state.copyWith(gameDetails: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () => _gamesRepository.getGameDetails(id: _id),
    );

    if (!mounted) return;

    state = state.copyWith(gameDetails: result);
  }
}

@freezed
class GameDetailsUiState with _$GameDetailsUiState {
  const factory GameDetailsUiState({
    @Default(AsyncValue.loading()) AsyncValue<Game> gameDetails,
  }) = _GameDetailsUiState;
}
