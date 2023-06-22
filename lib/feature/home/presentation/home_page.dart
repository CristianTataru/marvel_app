import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_fade/image_fade.dart';
import 'package:marvel_app/feature/home/bloc/home_bloc.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/models/thumbnail.dart';

final bloc = HomeBloc();

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    bloc.add(const HomeEvent.onAppStarted());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: bloc,
      builder: (context, homeState) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 9, 54, 92),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 6, 33, 54),
            title: const Text("Welcome"),
          ),
          body: homeState.map(
            loading: (state) => Column(
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
            ),
            loaded: (state) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "What's your pick for today?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Recommendations",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        _UserPick(state.characters.first.thumbnail, "Characters", () {
                          bloc.add(const HomeEvent.onCharactersPageTapped());
                        }),
                        const Spacer(),
                        _UserPick(state.comics[2].thumbnail, "Comics", () {}),
                        const Spacer(),
                        _UserPick(state.series[2].thumbnail, "Series", () {}),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 8,
                    endIndent: 8,
                  ),
                  const SizedBox(height: 8),
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
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [...state.stories.map((story) => _StoryEntry(story))],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: Colors.grey,
                    indent: 8,
                    endIndent: 8,
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: Row(
                      children: [
                        const Text(
                          "Creators",
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
                  CreatorsCarousel(
                    state.creators,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _UserPick extends StatelessWidget {
  const _UserPick(this.thumbnail, this.sectionTitile, this.onTap);

  final Thumbnail thumbnail;
  final String sectionTitile;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            height: 136,
            width: 96,
            child: ImageFade(
              image: NetworkImage("${thumbnail.path}.${thumbnail.extension}"),
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
        ),
        const SizedBox(height: 8),
        Text(
          sectionTitile,
          style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class _StoryEntry extends StatelessWidget {
  const _StoryEntry(this.story);

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            height: 136,
            width: 88,
            color: const Color.fromARGB(255, 31, 124, 201),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Stack(children: [
                const Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.menu_book_sharp,
                    color: Color.fromARGB(255, 16, 66, 107),
                    size: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    story.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class CreatorsCarousel extends StatelessWidget {
  const CreatorsCarousel(this.creators, {super.key});

  final List<Creator> creators;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 312,
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 4,
          crossAxisSpacing: 0,
          mainAxisSpacing: 8,
          childAspectRatio: 0.5,
          children: [
            ...creators.map(
              (creator) => CreatorEntry(creator),
            )
          ],
        ),
      ),
    );
  }
}

class CreatorEntry extends StatelessWidget {
  const CreatorEntry(this.creator, {super.key});

  final Creator creator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 144,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.5),
                color: const Color.fromARGB(255, 47, 104, 20),
              ),
              height: 56,
              width: 40,
              child: creator.thumbnail.path.contains("image_not_available")
                  ? const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  : ImageFade(
                      image: NetworkImage("${creator.thumbnail.path}.${creator.thumbnail.extension}"),
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
              child: Text(
                creator.fullName,
                style: const TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
