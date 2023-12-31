import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/di/di_container.dart';
import 'package:marvel_app/feature/characters/bloc/characters_bloc.dart';
import 'package:marvel_app/models/api_filters.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/theme/custom_colors.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/marvel_image.dart';

@RoutePage()
class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key, this.filter});

  final ApiFilter? filter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersBloc>(
      create: (context) => diContainer.get()..add(CharactersEvent.onPageOpened(filter: filter)),
      child: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, charactersState) {
          return Scaffold(
            backgroundColor: CustomColors.background,
            appBar: AppBar(
              title: const Row(
                children: [
                  Text("Characters"),
                  Spacer(),
                  Icon(Icons.person_4),
                ],
              ),
              backgroundColor: CustomColors.appBar,
              leading: const BackButton(color: CustomColors.lightBlue),
            ),
            body: charactersState.map(
              loading: (state) => pageLoadingSpinner,
              loaded: (state) => ListView(
                characters: state.characters,
                canLoadMore: state.canLoadMore,
                filter: filter,
              ),
              moreLoading: (state) => ListView(
                characters: state.characters,
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

class CharacterEntry extends StatelessWidget {
  const CharacterEntry(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        key: const Key('characterEntryTapKey'),
        onTap: () {
          context.read<CharactersBloc>().add(CharactersEvent.onCharacterTapped(character: character));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: CustomColors.orange,
                ),
                height: 120,
                width: 80,
                child: character.thumbnail.path.contains("image_not_available")
                    ? const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person_4,
                          color: Colors.white,
                          size: 64,
                        ),
                      )
                    : MarvelImage(thumbnailPath: character.thumbnail.path, extension: character.thumbnail.extension)),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                character.name,
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
  const ListView({super.key, required this.characters, this.showSpinner = false, this.canLoadMore, this.filter});

  final List<Character> characters;
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
        context.read<CharactersBloc>().add(CharactersEvent.onMoreDataLoading(filter: widget.filter));
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
      key: const Key('charactersPageScrollKey'),
      controller: scrollController,
      child: Column(
        children: [
          const SizedBox(height: 8),
          ...widget.characters.map((e) => CharacterEntry(e)),
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
