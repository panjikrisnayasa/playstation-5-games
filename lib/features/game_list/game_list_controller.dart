import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playstation_5_games/app/data/games/games_repository.dart';

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

  Future<void> _getPlaystation5Games() async {}
}

@freezed
class GameListUiState with _$GameListUiState {
  const factory GameListUiState() = _GameListUiState;
}
