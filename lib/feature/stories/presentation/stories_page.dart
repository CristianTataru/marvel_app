import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/stories/bloc/stories_bloc.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/story.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/common.dart';

final bloc = StoriesBloc();

@RoutePage()
class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key, this.filter});

  final ApiFilter? filter;

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(StoriesEvent.onPageOpened(filter: widget.filter));
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
          body: storiesState.map(
            loading: (state) => pageLoadingSpinner,
            loaded: (state) => ListView(
              stories: state.stories,
              canLoadMore: state.canLoadMore,
              filter: widget.filter,
            ),
            moreLoading: (state) => ListView(
              stories: state.stories,
              canLoadMore: null,
              showSpinner: true,
              filter: widget.filter,
            ),
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
        key: const Key('storyEntryTapKey'),
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

class ListView extends StatefulWidget {
  const ListView({super.key, required this.stories, this.showSpinner = false, this.canLoadMore, this.filter});

  final List<Story> stories;
  final bool showSpinner;
  final bool? canLoadMore;
  final ApiFilter? filter;

  @override
  State<ListView> createState() => _ListViewState();
}

class _ListViewState extends State<ListView> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent && widget.canLoadMore == true) {
        bloc.add(StoriesEvent.onMoreDataLoading(filter: widget.filter));
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
    return SingleChildScrollView(
      key: const Key('storiesPageScrollKey'),
      controller: scrollController,
      child: Column(
        children: [
          const SizedBox(height: 8),
          ...widget.stories.map((e) => _StoryEntry(e)),
          if (widget.showSpinner)
            const SizedBox(
              height: 96,
              child: loadingSpinner,
            )
          else
            const SizedBox(height: 96),
        ],
      ),
    );
  }
}
