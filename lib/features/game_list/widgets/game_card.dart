import 'package:flutter/material.dart';
import 'package:playstation_5_games/app/data/games/model/game.dart';
import 'package:playstation_5_games/app/localizations/build_context_localizations_extension.dart';
import 'package:playstation_5_games/app/utils/date_time_formatter.dart';
import 'package:playstation_5_games/app/widgets/image_network_widget.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
    required this.game,
    this.onPressed,
  });

  final Game game;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            top: 8,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageNetworkWidget(
                url: game.backgroundImage,
                height: 120,
              ),
              const SizedBox(height: 12),
              Text(
                game.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${context.localizations.releasedDate} ${game.released.yMMMd(context)}',
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${context.localizations.metacriticScore} ${game.metacritic}',
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
