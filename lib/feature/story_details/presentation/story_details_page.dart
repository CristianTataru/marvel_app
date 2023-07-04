import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/story_details/bloc/story_details_bloc.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/characters_caroulsel.dart';
import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/creators_caroulsel.dart';
import 'package:marvel_app/widgets/section_title.dart';
import 'package:marvel_app/widgets/series_carousel.dart';

final bloc = StoryDetailsBloc();

@RoutePage()
class StoryDetailsPage extends StatefulWidget {
  const StoryDetailsPage({required this.story, super.key});

  final Story story;

  @override
  State<StoryDetailsPage> createState() => _StoryDetailsPageState();
}

class _StoryDetailsPageState extends State<StoryDetailsPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(StoryDetailsEvent.onPageOpened(story: widget.story));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryDetailsBloc, StoryDetailsState>(
      bloc: bloc,
      builder: (context, storyDetailsState) {
        return Scaffold(
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            title: Text(widget.story.title),
            backgroundColor: CustomColors.appBar,
            leading: const BackButton(color: CustomColors.lightBlue),
          ),
          body: storyDetailsState.map(
            loading: (state) => pageLoadingSpinner,
            loaded: (state) => Column(
              children: [
                const SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        TopSection(widget.story),
                        const SizedBox(height: 16),
                        if (state.storyCharacters.isNotEmpty) ...[
                          divider,
                          const SizedBox(height: 8),
                          SectionTitle(
                            () {
                              bloc.add(StoryDetailsEvent.onSeeAllStoryCharactersTapped(story: widget.story));
                            },
                            title: "Characters",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          CharactersCarousel(
                            characters: state.storyCharacters.length > 5
                                ? state.storyCharacters.sublist(0, 5)
                                : state.storyCharacters,
                          ),
                          const SizedBox(height: 8),
                        ],
                        if (state.storyComics.isNotEmpty) ...[
                          divider,
                          const SizedBox(height: 8),
                          SectionTitle(
                            () {
                              bloc.add(StoryDetailsEvent.onSeeAllStoryComicsTapped(story: widget.story));
                            },
                            title: "Comics",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          ComicsCarousel(
                            comics: state.storyComics.length > 5 ? state.storyComics.sublist(0, 5) : state.storyComics,
                          ),
                          const SizedBox(height: 8)
                        ],
                        if (state.storySeries.isNotEmpty) ...[
                          divider,
                          const SizedBox(height: 8),
                          SectionTitle(
                            () {
                              bloc.add(StoryDetailsEvent.onSeeAllStorySeriesTapped(story: widget.story));
                            },
                            title: "Series",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          SeriesCarousel(
                            series: state.storySeries.length > 5 ? state.storySeries.sublist(0, 5) : state.storySeries,
                          ),
                          const SizedBox(height: 8)
                        ],
                        if (state.storyCreators.isNotEmpty) ...[
                          divider,
                          const SizedBox(height: 8),
                          SectionTitle(
                            () {
                              bloc.add(StoryDetailsEvent.onSeeAllStoryCreatorsTapped(story: widget.story));
                            },
                            title: "Creators",
                            seeAll: true,
                          ),
                          const SizedBox(height: 8),
                          CreatorsCarousel(
                            creators: state.storyCreators.length > 5
                                ? state.storyCreators.sublist(0, 5)
                                : state.storyCreators,
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
  const TopSection(this.story, {super.key});

  final Story story;

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
                color: CustomColors.lightBlue,
              ),
              height: 160,
              width: 104,
              child: const Icon(
                Icons.menu_book_sharp,
                color: CustomColors.darkBlue,
                size: 64,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    story.title,
                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Text(
                          story.description,
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
