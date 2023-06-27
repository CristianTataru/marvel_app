import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/series/bloc/series_bloc.dart';
import 'package:marvel_app/models/series.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/marvel_image.dart';

final bloc = SeriesBloc();

@RoutePage()
class SeriesPage extends StatefulWidget {
  const SeriesPage({super.key});

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    bloc.add(const SeriesEvent.onPageOpened());
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        bloc.add(const SeriesEvent.onMoreDataLoading());
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
    return BlocBuilder<SeriesBloc, SeriesState>(
      bloc: bloc,
      builder: (context, seriesState) {
        return Scaffold(
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            title: Row(
              children: const [
                Text("Series"),
                Spacer(),
                Icon(Icons.library_books_outlined),
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
                      ...seriesState.map(
                        loaded: (state) => [
                          ...state.series.map((e) => SeriesEntry(e)),
                          const SizedBox(height: 96),
                        ],
                        moreLoading: (state) => [
                          ...state.series.map((e) => SeriesEntry(e)),
                          const SizedBox(
                            height: 96,
                            child: Center(
                              child: SizedBox(height: 40, width: 40, child: CircularProgressIndicator()),
                            ),
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

class SeriesEntry extends StatelessWidget {
  const SeriesEntry(this.series, {super.key});

  final Series series;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          bloc.add(SeriesEvent.onSeriesTapped(series: series));
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
