import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/di/di_container.dart';
import 'package:marvel_app/feature/series/bloc/series_bloc.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/marvel_image.dart';

@RoutePage()
class SeriesPage extends StatelessWidget {
  const SeriesPage({super.key, this.filter});

  final ApiFilter? filter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SeriesBloc>(
      create: (context) => diContainer.get()..add(SeriesEvent.onPageOpened(filter: filter)),
      child: BlocBuilder<SeriesBloc, SeriesState>(
        builder: (context, seriesState) {
          return Scaffold(
            backgroundColor: CustomColors.background,
            appBar: AppBar(
              title: const Row(
                children: [
                  Text("Series"),
                  Spacer(),
                  Icon(Icons.library_books_outlined),
                ],
              ),
              backgroundColor: CustomColors.appBar,
              leading: const BackButton(color: CustomColors.lightBlue),
            ),
            body: seriesState.map(
              loading: (state) => pageLoadingSpinner,
              loaded: (state) => ListView(
                series: state.series,
                canLoadMore: state.canLoadMore,
                filter: filter,
              ),
              moreLoading: (state) => ListView(
                series: state.series,
                canLoadMore: null,
                showSpinner: true,
                filter: filter,
              ),
            ),
          );
        },
      ),
    );
  }
}

class SeriesEntry extends StatelessWidget {
  const SeriesEntry(this.series, {super.key});

  final Series series;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        key: const Key('seriesEntryTapKey'),
        onTap: () {
          context.read<SeriesBloc>().add(SeriesEvent.onSeriesTapped(series: series));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: CustomColors.yellow,
              ),
              height: 120,
              width: 80,
              child: series.thumbnail.path.contains("image_not_available")
                  ? const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.my_library_books_outlined,
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
              child: Text(
                series.title,
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
  const ListView({super.key, required this.series, this.showSpinner = false, this.canLoadMore, this.filter});

  final List<Series> series;
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
        context.read<SeriesBloc>().add(SeriesEvent.onMoreDataLoading(filter: widget.filter));
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
      key: const Key('seriesPageScrollKey'),
      controller: scrollController,
      child: Column(
        children: [
          const SizedBox(height: 8),
          ...widget.series.map((e) => SeriesEntry(e)),
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
