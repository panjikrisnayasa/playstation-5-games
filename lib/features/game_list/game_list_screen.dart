import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/localizations/build_context_localizations_extension.dart';
import 'package:playstation_5_games/app/widgets/empty_data_widget.dart';
import 'package:playstation_5_games/app/widgets/error_state_widget.dart';
import 'package:playstation_5_games/app/widgets/loading_state_widget.dart';
import 'package:playstation_5_games/app/widgets/next_page_loading_indicator.dart';
import 'package:playstation_5_games/features/game_details/game_details_screen.dart';
import 'package:playstation_5_games/features/game_list/game_list_controller.dart';
import 'package:playstation_5_games/features/game_list/widgets/game_card.dart';

class GameListScreen extends ConsumerStatefulWidget {
  const GameListScreen({super.key});

  @override
  ConsumerState<GameListScreen> createState() => _GameListScreenState();
}

class _GameListScreenState extends ConsumerState<GameListScreen> {
  final _controller = GameListController.provider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(_controller.notifier).onScreenLoaded();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localizations.playstation5Games,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: _gameListUiState(),
      ),
    );
  }

  Widget _gameListUiState() {
    final gameList = ref.watch(_controller.select((value) => value.gameList));

    return gameList.when(
      data: (data) {
        if (data.isEmpty) {
          return EmptyDataWidget(
            text: context.localizations.noPlaystation5Games,
          );
        }

        return _gameList(data);
      },
      error: (_, __) {
        return ErrorStateWidget(
          onRetry: ref.read(_controller.notifier).onReload,
        );
      },
      loading: () {
        return const LoadingStateWidget();
      },
    );
  }

  Widget _gameList(List<Game> data) {
    const loadMoreItem = 1;
    final isCanLoadMore = ref.watch(
      _controller.select(
        (value) =>
            value.nextPageGameList is! AsyncError &&
            value.nextPageGameList is! AsyncLoading,
      ),
    );
    final nextPageGameList = ref.watch(
      _controller.select((value) => value.nextPageGameList),
    );

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollInfo) {
        final minPixelsToLoadMore = scrollInfo.metrics.maxScrollExtent - 500;

        if (scrollInfo.metrics.pixels > minPixelsToLoadMore) {
          if (isCanLoadMore) {
            ref.read(_controller.notifier).loadMorePlaystation5Games();
          }
        }

        return true;
      },
      child: ListView.builder(
        key: const Key('game_list'),
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          bottom: 16,
        ),
        itemCount: data.length + loadMoreItem,
        itemBuilder: (context, index) {
          if (index < data.length) {
            final game = data[index];

            return GameCard(
              key: Key('game_item_${game.id}'),
              game: game,
              onPressed: () => _navigateToGameDetails(game.id),
            );
          }

          return NextPageLoadingIndicator(
            uiState: nextPageGameList,
            onRetry: ref.read(_controller.notifier).loadMorePlaystation5Games,
          );
        },
      ),
    );
  }

  void _navigateToGameDetails(int id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GameDetailsScreen(id: id),
      ),
    );
  }
}
