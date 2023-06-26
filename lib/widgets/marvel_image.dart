import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';

class MarvelImage extends StatelessWidget {
  const MarvelImage({required this.thumbnailPath, required this.extension, super.key});

  final String thumbnailPath;
  final String extension;

  @override
  Widget build(BuildContext context) {
    return ImageFade(
      image: NetworkImage("$thumbnailPath.$extension"),
      fit: BoxFit.cover,
      loadingBuilder: (context, progress, chunkEvent) => Center(
        child: CircularProgressIndicator(
          value: progress,
          color: Colors.blue,
        ),
      ),
      errorBuilder: (context, error) => Container(
        color: const Color(0xFF6F6D6A),
        alignment: Alignment.center,
        child: const Icon(Icons.warning, color: Colors.black26, size: 80.0),
      ),
    );
  }
}
