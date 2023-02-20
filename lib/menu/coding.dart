import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../animated_progress_indicator.dart';
import '../screens/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.78,
          label: "node",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 1.00,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 1.00,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.88,
          label: "next.js",
        ),
      ],
    );
  }
}
