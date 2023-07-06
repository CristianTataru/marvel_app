import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/character_details/bloc/character_details_bloc.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/marvel_image.dart';
import 'package:marvel_app/widgets/section_title.dart';
import 'package:marvel_app/widgets/series_carousel.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';

final bloc = CharacterDetailsBloc(marvelRepository, router);

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
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            title: Text(widget.character.name),
            backgroundColor: CustomColors.appBar,
            leading: const BackButton(color: CustomColors.lightBlue),
          ),
          body: characterDetailsState.map(
            loading: (state) => pageLoadingSpinner,
            loaded: (state) => Column(
              children: [
                const SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        TopSection(widget.character),
                        const SizedBox(height: 16),
                        divider,
                        const SizedBox(height: 8),
                        if (state.characterComics.isNotEmpty)
                          SectionTitle(
                            () {
                              bloc.add(
                                  CharacterDetailsEvent.onSeeAllCharacterComicsTapped(character: widget.character));
                            },
                            title: "Comics",
                            seeAll: true,
                          ),
                        const SizedBox(height: 8),
                        ComicsCarousel(
                          comics: state.characterComics.length > 5
                              ? state.characterComics.sublist(0, 5)
                              : state.characterComics,
                        ),
                        const SizedBox(height: 8),
                        if (state.characterSeries.isNotEmpty) ...[
                          divider,
                          const SizedBox(height: 8),
                          SectionTitle(
                            () {
                              bloc.add(
                                  CharacterDetailsEvent.onSeeAllCharacterSeriesTapped(character: widget.character));
                            },
                            title: "Series",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          SeriesCarousel(
                            series: state.characterSeries.length > 5
                                ? state.characterSeries.sublist(0, 5)
                                : state.characterSeries,
                          ),
                          const SizedBox(height: 8),
                        ],
                        if (state.characterStories.isNotEmpty) ...[
                          divider,
                          const SizedBox(height: 8),
                          SectionTitle(
                            () {
                              bloc.add(
                                  CharacterDetailsEvent.onSeeAllCharacterStoriesTapped(character: widget.character));
                            },
                            title: "Stories",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          StoriesCarousel(
                            stories: state.characterStories.length > 5
                                ? state.characterStories.sublist(0, 5)
                                : state.characterStories,
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
  const TopSection(this.character, {super.key});

  final Character character;

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
                color: CustomColors.orange,
              ),
              height: 160,
              width: 104,
              child: character.thumbnail.path.contains("image_not_available")
                  ? const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person_4,
                        color: Colors.white,
                        size: 64,
                      ),
                    )
                  : MarvelImage(
                      thumbnailPath: character.thumbnail.path,
                      extension: character.thumbnail.extension,
                    ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.name,
                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Text(
                          character.description,
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
