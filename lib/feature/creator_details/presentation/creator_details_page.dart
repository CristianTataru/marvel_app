import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/di/di_container.dart';
import 'package:marvel_app/feature/creator_details/bloc/creator_details_bloc.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/comics_carousel.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/marvel_image.dart';
import 'package:marvel_app/widgets/section_title.dart';
import 'package:marvel_app/widgets/series_carousel.dart';
import 'package:marvel_app/widgets/stories_carousel.dart';

@RoutePage()
class CreatorDetailsPage extends StatelessWidget {
  const CreatorDetailsPage({required this.creator, super.key});

  final Creator creator;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreatorDetailsBloc>(
      create: (context) => diContainer.get()..add(CreatorDetailsEvent.onPageOpened(creator: creator)),
      child: BlocBuilder<CreatorDetailsBloc, CreatorDetailsState>(
        builder: (context, creatorDetailsState) {
          return Scaffold(
            backgroundColor: CustomColors.background,
            appBar: AppBar(
              title: Text(creator.fullName),
              backgroundColor: CustomColors.appBar,
              leading: const BackButton(color: CustomColors.lightBlue),
            ),
            body: creatorDetailsState.map(
              loading: (state) => pageLoadingSpinner,
              loaded: (state) => Column(
                children: [
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          TopSection(creator),
                          const SizedBox(height: 16),
                          if (state.creatorComics.isNotEmpty) ...[
                            divider,
                            const SizedBox(height: 8),
                            SectionTitle(
                              () {
                                context
                                    .read<CreatorDetailsBloc>()
                                    .add(CreatorDetailsEvent.onSeeAllCreatorComicsTapped(creator: creator));
                              },
                              title: "Comics",
                              seeAll: true,
                            ),
                            const SizedBox(height: 8),
                            ComicsCarousel(
                              comics: state.creatorComics.length > 5
                                  ? state.creatorComics.sublist(0, 5)
                                  : state.creatorComics,
                            ),
                            const SizedBox(height: 8)
                          ],
                          if (state.creatorSeries.isNotEmpty) ...[
                            divider,
                            const SizedBox(height: 8),
                            SectionTitle(
                              () {
                                context
                                    .read<CreatorDetailsBloc>()
                                    .add(CreatorDetailsEvent.onSeeAllCreatorSeriesTapped(creator: creator));
                              },
                              title: "Series",
                              seeAll: true,
                            ),
                            const SizedBox(height: 8),
                            SeriesCarousel(
                              series: state.creatorSeries.length > 5
                                  ? state.creatorSeries.sublist(0, 5)
                                  : state.creatorSeries,
                            ),
                            const SizedBox(height: 8)
                          ],
                          if (state.creatorStories.isNotEmpty) ...[
                            divider,
                            const SizedBox(height: 8),
                            SectionTitle(
                              () {
                                context
                                    .read<CreatorDetailsBloc>()
                                    .add(CreatorDetailsEvent.onSeeAllCreatorStoriesTapped(creator: creator));
                              },
                              title: "Stories",
                              seeAll: true,
                            ),
                            const SizedBox(height: 8),
                            StoriesCarousel(
                              stories: state.creatorSeries.length > 5
                                  ? state.creatorStories.sublist(0, 5)
                                  : state.creatorStories,
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
  const TopSection(this.creator, {super.key});

  final Creator creator;

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
                color: CustomColors.green,
              ),
              height: 160,
              width: 104,
              child: creator.thumbnail.path.contains("image_not_available")
                  ? const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 64,
                    )
                  : MarvelImage(
                      thumbnailPath: creator.thumbnail.path,
                      extension: creator.thumbnail.extension,
                    ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    creator.fullName,
                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    creator.suffix,
                    style: const TextStyle(color: Colors.grey, fontSize: 18),
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
