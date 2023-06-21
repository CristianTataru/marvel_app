import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_fade/image_fade.dart';
import 'package:marvel_app/feature/home/bloc/home_bloc.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/models/thumbnail.dart';

final bloc = HomeBloc();

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
            loading: (state) => const CircularProgressIndicator(),
            loaded: (state) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 48),
                const Text(
                  "Welcome!",
                  style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "What's your pick for today?",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Recommendations:",
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
                      _UserPick(state.characters.first.thumbnail, "Characters"),
                      const Spacer(),
                      _UserPick(state.comics[2].thumbnail, "Comics"),
                      const Spacer(),
                      _UserPick(state.series[2].thumbnail, "Series"),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Stories:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [...state.stories.map((story) => _StoryEntry(story))],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class _UserPick extends StatelessWidget {
  const _UserPick(this.thumbnail, this.sectionTitile);

  final Thumbnail thumbnail;
  final String sectionTitile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
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
                child: const Icon(Icons.warning, color: Colors.black26, size: 128.0),
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
