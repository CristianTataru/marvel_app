import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/di/di_container.dart';
import 'package:marvel_app/feature/home/bloc/home_bloc.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/section_title.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => diContainer.get()..add(const HomeEvent.onAppStarted()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, homeState) {
          return Scaffold(
            backgroundColor: CustomColors.background,
            appBar: AppBar(
              backgroundColor: CustomColors.appBar,
              title: const Text("Welcome"),
            ),
            body: homeState.map(
              loading: (state) => pageLoadingSpinner,
              loaded: (state) => SingleChildScrollView(
                key: const Key('homePageScrollKey'),
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
                    SectionTitle(() {}, title: "Recommendations", seeAll: false),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          UserPick('assets/characters.jpg', "Characters", () {
                            context
                                .read<HomeBloc>()
                                .add(HomeEvent.onCharactersPageTapped(characters: state.characters));
                          }),
                          const Spacer(),
                          UserPick('assets/comics.jpg', "Comics", () {
                            context.read<HomeBloc>().add(HomeEvent.onComicsPageTapped(comics: state.comics));
                          }),
                          const Spacer(),
                          UserPick('assets/series.jpg', "Series", () {
                            context.read<HomeBloc>().add(HomeEvent.onSeriesPageTapped(series: state.series));
                          }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    divider,
                    const SizedBox(height: 8),
                    SectionTitle(() {
                      context.read<HomeBloc>().add(HomeEvent.onSeeAllStoriesTapped(stories: state.stories));
                    }, title: "Stories", seeAll: true),
                    const SizedBox(height: 16),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [...state.stories.map((story) => StoryEntry(story))],
                      ),
                    ),
                    const SizedBox(height: 8),
                    divider,
                    const SizedBox(height: 8),
                    SectionTitle(
                      () {
                        context.read<HomeBloc>().add(HomeEvent.onSeeAllCreatorsTapped(creators: state.creators));
                      },
                      title: "Creators",
                      seeAll: true,
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
      ),
    );
  }
}

class UserPick extends StatelessWidget {
  const UserPick(this.path, this.sectionTitile, this.onTap, {super.key});

  final String path;
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
            child: Image(
              image: AssetImage(path),
              fit: BoxFit.cover,
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

class StoryEntry extends StatelessWidget {
  const StoryEntry(this.story, {super.key});

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          context.read<HomeBloc>().add(HomeEvent.onStoryTapped(story: story));
        },
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            height: 136,
            width: 88,
            color: CustomColors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Stack(children: [
                const Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.menu_book_sharp,
                    color: CustomColors.darkBlue,
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
      child: GestureDetector(
        onTap: () {
          context.read<HomeBloc>().add(HomeEvent.onCreatorTapped(creator: creator));
        },
        child: SizedBox(
          width: 144,
          child: Row(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: Colors.white,
                child: creator.thumbnail.path.contains("image_not_available")
                    ? const CircleAvatar(
                        radius: 25,
                        backgroundColor: CustomColors.green,
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 32,
                          ),
                        ))
                    : CircleAvatar(
                        radius: 25,
                        backgroundColor: CustomColors.green,
                        backgroundImage: NetworkImage("${creator.thumbnail.path}.${creator.thumbnail.extension}"),
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
      ),
    );
  }
}
