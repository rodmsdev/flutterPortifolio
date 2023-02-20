import 'package:flutter/material.dart';
import 'package:flutter_ptf/screens/constants.dart';
import '../main/main_screen.dart';
import 'components/high_lights_info.dart';
import 'components/home_banner.dart';
import 'components/projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            Projects(),
            SizedBox(height: defaultPadding),
            Recommendations(),
            SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}
