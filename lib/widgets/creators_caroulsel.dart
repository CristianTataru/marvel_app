import 'package:flutter/material.dart';
import 'package:marvel_app/models/creator.dart';

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
      child: SizedBox(
        height: 168,
        width: 96,
        child: Column(
          children: [
            Container(
              height: 128,
              width: 96,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                color: const Color.fromARGB(255, 47, 104, 20),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 64,
                ),
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
    );
  }
}
