import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/stories/bloc/stories_bloc.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/common.dart';

final bloc = StoriesBloc();

@RoutePage()
class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    bloc.add(const StoriesEvent.onPageOpened());
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        bloc.add(const StoriesEvent.onMoreDataLoading());
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
    return BlocBuilder<StoriesBloc, StoriesState>(
      bloc: bloc,
      builder: (context, storiesState) {
        return Scaffold(
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            title: Row(
              children: const [
                Text("Stories"),
                Spacer(),
                Icon(Icons.menu_book_sharp),
              ],
            ),
            backgroundColor: CustomColors.appBar,
            leading: const BackButton(color: CustomColors.lightBlue),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      ...storiesState.map(
                        loaded: (state) => [
                          ...state.stories.map((e) => _StoryEntry(e)),
                          const SizedBox(height: 96),
                        ],
                        moreLoading: (state) => [
                          ...state.stories.map((e) => _StoryEntry(e)),
                          const SizedBox(
                            height: 96,
                            child: loadingSpinner,
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

class _StoryEntry extends StatelessWidget {
  const _StoryEntry(this.story);

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          bloc.add(StoriesEvent.onStoryTapped(story: story));
        },
        child: Row(
          children: [
            Container(
              height: 136,
              width: 88,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.white)),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Container(
                  height: 136,
                  width: 88,
                  color: CustomColors.lightBlue,
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.menu_book_sharp,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                story.title,
                style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                overflow: TextOverflow.fade,
              ),
            )
          ],
        ),
      ),
    );
  }
}
