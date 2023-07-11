import 'package:flutter/material.dart';
import 'package:marvel_app/di/di_container.dart';
import 'package:marvel_app/models/creator.dart';
import 'package:marvel_app/routes/router.dart';
import 'package:marvel_app/routes/router.gr.dart';
import 'package:marvel_app/theme/custom_colors.dart';

class CreatorsCarousel extends StatelessWidget {
  const CreatorsCarousel({required this.creators, super.key});

  final List<Creator> creators;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [...creators.map((creator) => CreatorEntry(creator))],
          ),
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
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          diContainer.get<AppRouter>().push(CreatorDetailsRoute(creator: creator));
        },
        child: SizedBox(
          height: 168,
          width: 96,
          child: Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: Colors.white,
                child: creator.thumbnail.path.contains("image_not_available")
                    ? const CircleAvatar(
                        radius: 47,
                        backgroundColor: CustomColors.green,
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 64,
                          ),
                        ),
                      )
                    : CircleAvatar(
                        radius: 47,
                        backgroundColor: CustomColors.green,
                        backgroundImage: NetworkImage("${creator.thumbnail.path}.${creator.thumbnail.extension}"),
                      ),
              ),
              const SizedBox(height: 8),
              Text(
                creator.fullName,
                style: const TextStyle(color: Colors.white),
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
