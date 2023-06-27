import 'package:flutter/material.dart';
import 'package:marvel_app/models/story.dart';

class StoriesCarousel extends StatelessWidget {
  const StoriesCarousel({required this.stories, super.key});

  final List<Story> stories;

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
            children: [...stories.map((story) => StoryEntry(story))],
          ),
        ),
      ),
    );
  }
}

class StoryEntry extends StatelessWidget {
  const StoryEntry(this.story, {super.key});

  final Story story;

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
              child: const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.menu_book_sharp,
                  color: Colors.white,
                  size: 64,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              story.title,
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
