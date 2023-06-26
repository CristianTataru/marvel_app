import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/feature/characters/bloc/characters_bloc.dart';
import 'package:marvel_app/models/character.dart';
import 'package:marvel_app/widgets/common.dart';
import 'package:marvel_app/widgets/marvel_image.dart';

final bloc = CharactersBloc();

@RoutePage()
class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    bloc.add(const CharactersEvent.onPageOpened());
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        bloc.add(const CharactersEvent.onMoreDataLoading());
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
    return BlocBuilder<CharactersBloc, CharactersState>(
      bloc: bloc,
      builder: (context, charactersState) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 9, 54, 92),
          appBar: AppBar(
            title: Row(
              children: const [
                Text("Characters"),
                Spacer(),
                Icon(Icons.person_4),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 6, 33, 54),
            leading: const BackButton(color: Colors.blue),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      ...charactersState.map(
                        loaded: (state) => [
                          ...state.characters.map((e) => CharacterEntry(e)),
                          const SizedBox(height: 96),
                        ],
                        moreLoading: (state) => [
                          ...state.characters.map((e) => CharacterEntry(e)),
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

class CharacterEntry extends StatelessWidget {
  const CharacterEntry(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          bloc.add(CharactersEvent.onCharacterTapped(character: character));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: const Color.fromARGB(255, 47, 104, 20),
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
