import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/comic_details/bloc/comic_details_bloc.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/widgets/characters_caroulsel.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/creators_caroulsel.dart';
import 'package:marvel_app/widgets/marvel_image.dart';
import 'package:marvel_app/widgets/section_title.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';

final bloc = ComicDetailsBloc();

@RoutePage()
class ComicDetailsPage extends StatefulWidget {
  const ComicDetailsPage({required this.comic, super.key});

  final Comic comic;

  @override
  State<ComicDetailsPage> createState() => _ComicDetailsPageState();
}

class _ComicDetailsPageState extends State<ComicDetailsPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(ComicDetailsEvent.onPageOpened(comic: widget.comic));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComicDetailsBloc, ComicDetailsState>(
      bloc: bloc,
      builder: (context, comicDetailsState) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 9, 54, 92),
          appBar: AppBar(
            title: Text(widget.comic.title),
            backgroundColor: const Color.fromARGB(255, 6, 33, 54),
            leading: const BackButton(color: Colors.blue),
          ),
          body: comicDetailsState.map(
            loading: (state) => pageLoadingSpinner,
            loaded: (state) => Column(
              children: [
                const SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        TopSection(widget.comic),
                        const SizedBox(height: 16),
                        divider,
                        const SizedBox(height: 8),
                        if (state.comicCharacters.isNotEmpty) ...[
                          const SectionTitle(
                            title: "Characters",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          CharactersCarousel(
                            characters: state.comicCharacters.length > 5
                                ? state.comicCharacters.sublist(0, 5)
                                : state.comicCharacters,
                          ),
                          const SizedBox(height: 8),
                        ],
                        if (state.comicStories.isNotEmpty) ...[
                          divider,
                          const SizedBox(height: 8),
                          const SectionTitle(
                            title: "Stories",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          StoriesCarousel(
                            stories:
                                state.comicStories.length > 5 ? state.comicStories.sublist(0, 5) : state.comicStories,
                          ),
                          const SizedBox(height: 8)
                        ],
                        if (state.comicCreators.isNotEmpty) ...[
                          divider,
                          const SizedBox(height: 8),
                          const SectionTitle(
                            title: "Creators",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          CreatorsCarousel(
                            creators: state.comicCreators.length > 5
                                ? state.comicCreators.sublist(0, 5)
                                : state.comicCreators,
                          ),
                          const SizedBox(height: 8)
                        ],
                      ],
                    ),
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

class TopSection extends StatelessWidget {
  const TopSection(this.comic, {super.key});

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              child: comic.thumbnail.path.contains("image_not_available")
                  ? const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person_4,
                        color: Colors.white,
                        size: 64,
                      ),
                    )
                  : MarvelImage(
                      thumbnailPath: comic.thumbnail.path,
                      extension: comic.thumbnail.extension,
                    ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comic.title,
                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Text(
                          comic.description ?? "",
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
    );
  }
}
