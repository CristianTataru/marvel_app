import 'package:flutter/material.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/widgets/marvel_image.dart';

class SeriesCarousel extends StatelessWidget {
  const SeriesCarousel({required this.series, super.key});

  final List<Series> series;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [...series.map((series) => SeriesEntry(series))],
          ),
        ),
      ),
    );
  }
}

class SeriesEntry extends StatelessWidget {
  const SeriesEntry(this.series, {super.key});

  final Series series;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 168,
        width: 96,
        child: Column(
          children: [
            Container(
              height: 128,
              width: 96,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                color: const Color.fromARGB(255, 47, 104, 20),
              ),
              child: series.thumbnail.path.contains("image_not_available")
                  ? const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.book,
                        color: Colors.white,
                        size: 64,
                      ),
                    )
                  : MarvelImage(
                      thumbnailPath: series.thumbnail.path,
                      extension: series.thumbnail.extension,
                    ),
            ),
            const SizedBox(height: 8),
            Text(
              series.title,
              style: const TextStyle(color: Colors.white),
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
