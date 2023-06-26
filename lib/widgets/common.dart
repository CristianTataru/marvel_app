import 'package:flutter/material.dart';

//page loading spiner:
final pageLoadingSpinner = Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Row(
      children: const [
        Spacer(),
        SizedBox(
          height: 60,
          width: 60,
          child: CircularProgressIndicator(),
        ),
        Spacer(),
      ],
    ),
  ],
);

//divider:
const divider = Divider(
  color: Colors.grey,
  indent: 8,
  endIndent: 8,
);

//loading spinner:
const loadingSpinner = Center(
  child: SizedBox(height: 40, width: 40, child: CircularProgressIndicator()),
);
