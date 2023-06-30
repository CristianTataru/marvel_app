import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/creators/bloc/creators_bloc.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/common.dart';

final bloc = CreatorsBloc();

@RoutePage()
class CreatorsPage extends StatefulWidget {
  const CreatorsPage({super.key});

  @override
  State<CreatorsPage> createState() => _CreatorsPageState();
}

class _CreatorsPageState extends State<CreatorsPage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    bloc.add(const CreatorsEvent.onPageOpened());
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        bloc.add(const CreatorsEvent.onMoreDataLoading());
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
    return BlocBuilder<CreatorsBloc, CreatorsState>(
      bloc: bloc,
      builder: (context, creatorsState) {
        return Scaffold(
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            title: Row(
              children: const [
                Text("Creators"),
                Spacer(),
                Icon(Icons.person),
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
                      ...creatorsState.map(
                        loaded: (state) => [
                          ...state.creators.map((e) => CreatorEntry(e)),
                          const SizedBox(height: 96),
                        ],
                        moreLoading: (state) => [
                          ...state.creators.map((e) => CreatorEntry(e)),
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

class CreatorEntry extends StatelessWidget {
  const CreatorEntry(this.creator, {super.key});

  final Creator creator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          bloc.add(CreatorsEvent.onCreatorTapped(creator: creator));
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
