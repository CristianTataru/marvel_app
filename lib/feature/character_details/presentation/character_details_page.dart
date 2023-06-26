import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_fade/image_fade.dart';
import 'package:marvel_app/feature/character_details/bloc/character_details_bloc.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/models/story.dart';

final bloc = CharacterDetailsBloc();

@RoutePage()
class CharacterDetailsPage extends StatefulWidget {
  const CharacterDetailsPage({required this.character, super.key});

  final Character character;

  @override
  State<CharacterDetailsPage> createState() => _CharacterDetailsPageState();
}

class _CharacterDetailsPageState extends State<CharacterDetailsPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(CharacterDetailsEvent.onPageOpened(character: widget.character));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterDetailsBloc, CharacterDetailsState>(
      bloc: bloc,
      builder: (context, characterDetailsState) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 9, 54, 92),
          appBar: AppBar(
            title: Text(widget.character.name),
            backgroundColor: const Color.fromARGB(255, 6, 33, 54),
            leading: const BackButton(color: Colors.blue),
          ),
          body: Column(
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...characterDetailsState.map(
                        loading: (state) => [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Spacer(),
                                  SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: CircularProgressIndicator(),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ],
                          )
                        ],
                        loaded: (state) => [
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SizedBox(
                              height: 160,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: const Color.fromARGB(255, 47, 104, 20),
                                    ),
                                    height: 160,
                                    width: 104,
                                    child: widget.character.thumbnail.path.contains("image_not_available")
                                        ? const Align(
                                            alignment: Alignment.center,
                                            child: Icon(
                                              Icons.person_4,
                                              color: Colors.white,
                                              size: 64,
                                            ),
                                          )
                                        : ImageFade(
                                            image: NetworkImage(
                                                "${widget.character.thumbnail.path}.${widget.character.thumbnail.extension}"),
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
                                          ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.character.name,
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 8),
                                        SizedBox(
                                          height: 128,
                                          child: SingleChildScrollView(
                                            child: Center(
                                              child: Text(
                                                widget.character.description,
                                                style: const TextStyle(color: Colors.grey, fontSize: 18),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Divider(
                            color: Colors.grey,
                            indent: 8,
                            endIndent: 8,
                          ),
                          const SizedBox(height: 8),
                          if (state.characterComics.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(left: 16, right: 8),
                              child: Row(
                                children: [
                                  const Text(
                                    "Comics",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: const [
                                      Text(
                                        "See all",
                                        style: TextStyle(color: Colors.grey, fontSize: 18),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          const SizedBox(height: 8),
                          ComicsCarousel(
                            comics: state.characterComics.length > 5
                                ? state.characterComics.sublist(0, 5)
                                : state.characterComics,
                          ),
                          const SizedBox(height: 8),
                          if (state.characterSeries.isNotEmpty)
                            const Divider(
                              color: Colors.grey,
                              indent: 8,
                              endIndent: 8,
                            ),
                          const SizedBox(height: 8),
                          if (state.characterSeries.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(left: 16, right: 8),
                              child: Row(
                                children: [
                                  const Text(
                                    "Series",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: const [
                                      Text(
                                        "See all",
                                        style: TextStyle(color: Colors.grey, fontSize: 18),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          const SizedBox(height: 8),
                          SeriesCarousel(
                            series: state.characterSeries.length > 5
                                ? state.characterSeries.sublist(0, 5)
                                : state.characterSeries,
                          ),
                          const SizedBox(height: 8),
                          if (state.characterStories.isNotEmpty)
                            const Divider(
                              color: Colors.grey,
                              indent: 8,
                              endIndent: 8,
                            ),
                          const SizedBox(height: 8),
                          if (state.characterStories.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(left: 16, right: 8),
                              child: Row(
                                children: [
                                  const Text(
                                    "Stories",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: const [
                                      Text(
                                        "See all",
                                        style: TextStyle(color: Colors.grey, fontSize: 18),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          const SizedBox(height: 8),
                          StoriesCarousel(
                            stories: state.characterStories.length > 5
                                ? state.characterStories.sublist(0, 5)
                                : state.characterStories,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class ComicsCarousel extends StatelessWidget {
  const ComicsCarousel({required this.comics, super.key});

  final List<Comic> comics;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [...comics.map((comic) => ComicEntry(comic))],
          ),
        ),
      ),
    );
  }
}

class ComicEntry extends StatelessWidget {
  const ComicEntry(this.comic, {super.key});

  final Comic comic;

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
              child: comic.thumbnail.path.contains("image_not_available")
                  ? const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.book,
                        color: Colors.white,
                        size: 64,
                      ),
                    )
                  : ImageFade(
                      image: NetworkImage("${comic.thumbnail.path}.${comic.thumbnail.extension}"),
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
                    ),
            ),
            const SizedBox(height: 8),
            Text(
              comic.title,
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
                  : ImageFade(
                      image: NetworkImage("${series.thumbnail.path}.${series.thumbnail.extension}"),
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
