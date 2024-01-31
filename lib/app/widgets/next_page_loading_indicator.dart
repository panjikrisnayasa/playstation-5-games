import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playstation_5_games/app/localizations/build_context_localizations_extension.dart';

class NextPageLoadingIndicator extends StatelessWidget {
  const NextPageLoadingIndicator({
    super.key,
    required this.uiState,
    this.onRetry,
  });

  final AsyncValue<dynamic> uiState;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: uiState.when(
        data: (_) => const SizedBox.shrink(),
        error: (error, stackTrace) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: onRetry,
              child: Text(context.localizations.tryAgain),
            ),
          );
        },
        loading: () => Padding(
          padding: const EdgeInsets.all(12),
          child: Text(context.localizations.loading),
        ),
      ),
    );
  }
}
