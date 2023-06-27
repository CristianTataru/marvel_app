import 'package:flutter/material.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/routes/router.gr.dart';
import 'package:marvel_app/theme/custom_colors.dart';

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
      child: GestureDetector(
        onTap: () {
          router.push(StoryDetailsRoute(story: story));
        },
        child: SizedBox(
          height: 168,
          width: 96,
          child: Column(
            children: [
              Container(
                height: 128,
                width: 96,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 128,
                    width: 96,
                    decoration: const BoxDecoration(
                      color: CustomColors.lightBlue,
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
      ),
    );
  }
}
