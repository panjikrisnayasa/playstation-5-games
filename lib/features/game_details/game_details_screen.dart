import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playstation_5_games/app/localizations/build_context_localizations_extension.dart';
import 'package:playstation_5_games/app/widgets/error_state_widget.dart';
import 'package:playstation_5_games/app/widgets/image_network_widget.dart';
import 'package:playstation_5_games/app/widgets/loading_state_widget.dart';
import 'package:playstation_5_games/features/game_details/game_details_controller.dart';

class GameDetailsScreen extends ConsumerStatefulWidget {
  const GameDetailsScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  ConsumerState<GameDetailsScreen> createState() => _GameDetailsScreenState();
}

class _GameDetailsScreenState extends ConsumerState<GameDetailsScreen> {
  final _controller = GameDetailsController.provider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(_controller.notifier).onScreenLoaded(id: widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final gameDetails = ref.watch(
      _controller.select((value) => value.gameDetails),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localizations.gameDetails,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: gameDetails.when(
          data: (data) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                  bottom: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ImageNetworkWidget(
                      url: data.backgroundImage,
                      height: 160,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      data.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(data.genres.map((e) => e.name).toList().toString()),
                    const SizedBox(height: 8),
                    Text(
                        '${context.localizations.metacriticScore} ${data.metacritic}'),
                    Text(
                        '${context.localizations.rating} ${data.rating}/${data.ratingTop} (${data.ratingsCount})'),
                    const SizedBox(height: 16),
                    Text(
                      context.localizations.availableOn,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      data.platforms
                          .map((e) => e.platform.name)
                          .toList()
                          .toString(),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.localizations.description,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(data.descriptionRaw),
                    const SizedBox(height: 16),
                    Text(
                      context.localizations.publishers,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      data.publishers.map((e) => e.name).toList().toString(),
                    ),
                  ],
                ),
              ),
            );
          },
          error: (_, __) {
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
