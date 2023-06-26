import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({required this.title, required this.seeAll, super.key});

  final String title;
  final bool seeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 8),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
          const Spacer(),
          if (seeAll)
            Row(
              children: const [
                Text(
                  "See all",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            )
        ],
      ),
    );
  }
}
