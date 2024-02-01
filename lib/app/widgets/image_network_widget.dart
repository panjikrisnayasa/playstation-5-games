import 'package:flutter/material.dart';
import 'package:playstation_5_games/app/localizations/build_context_localizations_extension.dart';

class ImageNetworkWidget extends StatelessWidget {
  const ImageNetworkWidget({
    super.key,
    required this.url,
    this.height,
  });

  final String url;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        url,
        height: height,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return _imageStateContainer(context.localizations.loadingImage);
        },
        errorBuilder: (context, error, stackTrace) =>
            _imageStateContainer(context.localizations.noImageAvailable),
      ),
    );
  }

  Widget _imageStateContainer(String text) {
    return Container(
      color: Colors.black12,
      width: double.infinity,
      height: height,
      alignment: Alignment.center,
      child: Text(text),
    );
  }
}
