import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ptf/screens/constants.dart';
import 'package:flutter_ptf/screens/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/img_23.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  SizedBox(height: defaultPadding / 2),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.subtitle1!,
                  maxLines: 1,
                  child: Row(
                    children: [
                      if (!Responsive.isMobileLarge(context)) FlutterCodeText(),
                      if (!Responsive.isMobileLarge(context))
                        SizedBox(width: defaultPadding / 2),
                      Text("Achievements: "),
                      Responsive.isMobile(context)
                          ? Expanded(child: MyBuildAnimatedText())
                          : MyBuildAnimatedText(),
                      if (!Responsive.isMobileLarge(context))
                        SizedBox(width: defaultPadding / 2),
                      if (!Responsive.isMobileLarge(context)) FlutterCodeText(),
                    ],
                  ),
                ),
                SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () async {
                      final url = Uri.parse('https://github.com/rodmsdev/');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Text(
                      'GITHUB',
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText('responsive web app.',
            speed: Duration(milliseconds: 60)),
        TyperAnimatedText('app in flutter that consume nasa api',
            speed: Duration(milliseconds: 60)),
        TyperAnimatedText('HTML resume', speed: Duration(milliseconds: 60)),
      ],
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
