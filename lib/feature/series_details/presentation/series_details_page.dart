import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/di/di_container.dart';
import 'package:marvel_app/feature/series_details/bloc/series_details_bloc.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/characters_carousel.dart';
import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/creators_carousel.dart';
import 'package:marvel_app/widgets/marvel_image.dart';
import 'package:marvel_app/widgets/section_title.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';

@RoutePage()
class SeriesDetailsPage extends StatefulWidget {
  const SeriesDetailsPage({required this.series, super.key});

  final Series series;

  @override
  State<SeriesDetailsPage> createState() => _SeriesDetailsPageState();
}

class _SeriesDetailsPageState extends State<SeriesDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SeriesDetailsBloc>(
      create: (context) => diContainer.get()..add(SeriesDetailsEvent.onPageOpened(series: widget.series)),
      child: BlocBuilder<SeriesDetailsBloc, SeriesDetailsState>(
        builder: (context, seriesDetailsState) {
          return Scaffold(
            backgroundColor: CustomColors.background,
            appBar: AppBar(
              title: Text(widget.series.title),
              backgroundColor: CustomColors.appBar,
              leading: const BackButton(color: CustomColors.lightBlue),
            ),
            body: seriesDetailsState.map(
              loading: (state) => pageLoadingSpinner,
              loaded: (state) => Column(
                children: [
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          TopSection(widget.series),
                          const SizedBox(height: 16),
                          if (state.seriesCharacters.isNotEmpty) ...[
                            divider,
                            const SizedBox(height: 8),
                            SectionTitle(
                              () {
                                context
                                    .read<SeriesDetailsBloc>()
                                    .add(SeriesDetailsEvent.onSeeAllSeriesCharactersTapped(series: widget.series));
                              },
                              title: "Characters",
                              seeAll: true,
                            ),
                            const SizedBox(height: 8),
                            CharactersCarousel(
                              characters: state.seriesCharacters.length > 5
                                  ? state.seriesCharacters.sublist(0, 5)
                                  : state.seriesCharacters,
                            ),
                            const SizedBox(height: 8),
                          ],
                          if (state.seriesComics.isNotEmpty) ...[
                            divider,
                            const SizedBox(height: 8),
                            SectionTitle(
                              () {
                                context
                                    .read<SeriesDetailsBloc>()
                                    .add(SeriesDetailsEvent.onSeeAllSeriesComicsTapped(series: widget.series));
                              },
                              title: "Comics",
                              seeAll: true,
                            ),
                            const SizedBox(height: 8),
                            ComicsCarousel(
                              comics:
                                  state.seriesComics.length > 5 ? state.seriesComics.sublist(0, 5) : state.seriesComics,
                            ),
                            const SizedBox(height: 8)
                          ],
                          if (state.seriesStories.isNotEmpty) ...[
                            divider,
                            const SizedBox(height: 8),
                            SectionTitle(
                              () {
                                context
                                    .read<SeriesDetailsBloc>()
                                    .add(SeriesDetailsEvent.onSeeAllSeriesStoriesTapped(series: widget.series));
                              },
                              title: "Stories",
                              seeAll: true,
                            ),
                            const SizedBox(height: 8),
                            StoriesCarousel(
                              stories: state.seriesStories.length > 5
                                  ? state.seriesStories.sublist(0, 5)
                                  : state.seriesStories,
                            ),
                            const SizedBox(height: 8)
                          ],
                          if (state.seriesCreators.isNotEmpty) ...[
                            divider,
                            const SizedBox(height: 8),
                            SectionTitle(
                              () {
                                context
                                    .read<SeriesDetailsBloc>()
                                    .add(SeriesDetailsEvent.onSeeAllSeriesCreatorsTapped(series: widget.series));
                              },
                              title: "Creators",
                              seeAll: true,
                            ),
                            const SizedBox(height: 8),
                            CreatorsCarousel(
                              creators: state.seriesCreators.length > 5
                                  ? state.seriesCreators.sublist(0, 5)
                                  : state.seriesCreators,
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
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection(this.series, {super.key});

  final Series series;

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
                color: CustomColors.yellow,
              ),
              height: 160,
              width: 104,
              child: series.thumbnail.path.contains("image_not_available")
                  ? const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.library_books_outlined,
                        color: Colors.white,
                        size: 64,
                      ),
                    )
                  : MarvelImage(
                      thumbnailPath: series.thumbnail.path,
                      extension: series.thumbnail.extension,
                    ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    series.title,
                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Text(
                          series.description ?? "",
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
