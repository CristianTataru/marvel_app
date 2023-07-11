import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/di/di_container.dart';
import 'package:marvel_app/feature/creators/bloc/creators_bloc.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/common.dart';

@RoutePage()
class CreatorsPage extends StatelessWidget {
  const CreatorsPage({super.key, this.filter});

  final ApiFilter? filter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreatorsBloc>(
      create: (context) => diContainer.get()..add(CreatorsEvent.onPageOpened(filter: filter)),
      child: BlocBuilder<CreatorsBloc, CreatorsState>(
        builder: (context, creatorsState) {
          return Scaffold(
            backgroundColor: CustomColors.background,
            appBar: AppBar(
              title: const Row(
                children: [
                  Text("Creators"),
                  Spacer(),
                  Icon(Icons.person),
                ],
              ),
              backgroundColor: CustomColors.appBar,
              leading: const BackButton(color: CustomColors.lightBlue),
            ),
            body: creatorsState.map(
              loading: (state) => pageLoadingSpinner,
              loaded: (state) => ListView(
                creators: state.creators,
                canLoadMore: state.canLoadMore,
                filter: filter,
              ),
              moreLoading: (state) => ListView(
                creators: state.creators,
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

class CreatorEntry extends StatelessWidget {
  const CreatorEntry(this.creator, {super.key});

  final Creator creator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        key: const Key('creatorEntryTapKey'),
        onTap: () {
          context.read<CreatorsBloc>().add(CreatorsEvent.onCreatorTapped(creator: creator));
        },
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: creator.thumbnail.path.contains("image_not_available")
                  ? const CircleAvatar(
                      radius: 39,
                      backgroundColor: CustomColors.green,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 48,
                        ),
                      ))
                  : CircleAvatar(
                      radius: 39,
                      backgroundColor: CustomColors.green,
                      backgroundImage: NetworkImage("${creator.thumbnail.path}.${creator.thumbnail.extension}"),
                    ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                creator.fullName,
                style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
    );
  }
}

class ListView extends StatefulWidget {
  const ListView({super.key, required this.creators, this.showSpinner = false, this.canLoadMore, this.filter});

  final List<Creator> creators;
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
        context.read<CreatorsBloc>().add(CreatorsEvent.onMoreDataLoading(filter: widget.filter));
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
      key: const Key('creatorsPageScrollKey'),
      controller: scrollController,
      child: Column(
        children: [
          const SizedBox(height: 8),
          ...widget.creators.map((e) => CreatorEntry(e)),
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
