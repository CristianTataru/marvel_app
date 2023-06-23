import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_fade/image_fade.dart';
import 'package:marvel_app/feature/comics/bloc/comics_bloc.dart';
import 'package:marvel_app/models/comic.dart';

final bloc = ComicsBloc();

@RoutePage()
class ComicsPage extends StatefulWidget {
  const ComicsPage({super.key});

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    bloc.add(const ComicsEvent.onPageOpened());
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        bloc.add(const ComicsEvent.onMoreDataLoading());
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComicsBloc, ComicsState>(
      bloc: bloc,
      builder: (context, comicsState) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 9, 54, 92),
          appBar: AppBar(
            title: const Text("Comics"),
            backgroundColor: const Color.fromARGB(255, 6, 33, 54),
            leading: const BackButton(color: Colors.blue),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      ...comicsState.map(
                        loaded: (state) => [
                          ...state.comics.map((e) => ComicsEntry(e)),
                          const SizedBox(height: 96),
                        ],
                        moreLoading: (state) => [
                          ...state.comics.map((e) => ComicsEntry(e)),
                          const SizedBox(
                            height: 96,
                            child: Center(
                              child: SizedBox(height: 40, width: 40, child: CircularProgressIndicator()),
                            ),
                          )
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

class ComicsEntry extends StatelessWidget {
  const ComicsEntry(this.comic, {super.key});

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: const Color.fromARGB(255, 47, 104, 20),
            ),
            height: 120,
            width: 80,
            child: comic.thumbnail.path.contains("image_not_available")
                ? const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.my_library_books_outlined,
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
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              comic.title,
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
