import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playstation_5_games/app/localizations/build_context_localizations_extension.dart';
import 'package:playstation_5_games/app/widgets/empty_data_widget.dart';
import 'package:playstation_5_games/app/widgets/error_state_widget.dart';
import 'package:playstation_5_games/app/widgets/loading_state_widget.dart';
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
    final gameList = ref.watch(_controller.select((value) => value.gameList));

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
        child: gameList.when(
          data: (data) {
            if (data.isEmpty) {
              return EmptyDataWidget(
                text: context.localizations.noPlaystation5Games,
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 16,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final game = data[index];

                return GameCard(game: game);
              },
            );
          },
          error: (error, stackTrace) {
            return ErrorStateWidget(
              onRetry: ref.read(_controller.notifier).onReload,
            );
          },
          loading: () {
            return const LoadingStateWidget();
          },
        ),
      ),
    );
  }
}
