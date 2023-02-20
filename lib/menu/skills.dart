import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animated_progress_indicator.dart';
import '../screens/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        SizedBox(height: defaultPadding),
        Text(
          "Skills",
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Row(
            children: [
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.9,
                  label: "Flutter",
                ),
              ),
              SizedBox(width: defaultPadding * 1.5),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.9,
                  label: "Javascript",
                ),
              ),
              SizedBox(width: defaultPadding * 1.5),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.35,
                  label: "C#",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
