import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/comics/bloc/comics_bloc.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/comic.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/marvel_image.dart';

final bloc = ComicsBloc();

@RoutePage()
class ComicsPage extends StatefulWidget {
  const ComicsPage({super.key, this.filter});

  final ApiFilter? filter;

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(ComicsEvent.onPageOpened(filter: widget.filter));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComicsBloc, ComicsState>(
      bloc: bloc,
      builder: (context, comicsState) {
        return Scaffold(
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            title: Row(
              children: const [
                Text("Comics"),
                Spacer(),
                Icon(Icons.book),
              ],
            ),
            backgroundColor: CustomColors.appBar,
            leading: const BackButton(color: CustomColors.lightBlue),
          ),
          body: comicsState.map(
            loading: (state) => pageLoadingSpinner,
            loaded: (state) => ListView(
              comics: state.comics,
              canLoadMore: state.canLoadMore,
              filter: widget.filter,
            ),
            moreLoading: (state) => ListView(
              comics: state.comics,
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

class ComicsEntry extends StatelessWidget {
  const ComicsEntry(this.comic, {super.key});

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          bloc.add(ComicsEvent.onComicTapped(comic: comic));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: CustomColors.purple,
                ),
                height: 120,
                width: 80,
                child: comic.thumbnail.path.contains("image_not_available")
                    ? const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 64,
                        ),
                      )
                    : MarvelImage(
                        thumbnailPath: comic.thumbnail.path,
                        extension: comic.thumbnail.extension,
                      )),
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
      ),
    );
  }
}

class ListView extends StatefulWidget {
  const ListView({super.key, required this.comics, this.showSpinner = false, this.canLoadMore, this.filter});

  final List<Comic> comics;
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
        bloc.add(ComicsEvent.onMoreDataLoading(filter: widget.filter));
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
      controller: scrollController,
      child: Column(
        children: [
          const SizedBox(height: 8),
          ...widget.comics.map((e) => ComicsEntry(e)),
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
