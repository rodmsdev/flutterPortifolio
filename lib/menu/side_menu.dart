import 'package:flutter/material.dart';
import 'package:flutter_ptf/menu/area_info_text.dart';
import 'package:flutter_ptf/menu/my_info.dart';
import 'package:flutter_ptf/menu/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/constants.dart';
import 'coding.dart';
import 'knowledges.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Sergipe",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Aracaju",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "30",
                    ),
                    Skills(),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    TextButton(
                      onPressed: () async {
                        final url = Uri.parse(
                            'https://drive.google.com/file/d/1BNUjoWTzKbjiX4grNstV6naD5Eh9QSEV/view?usp=share_link/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD RESUME",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding / 2),
                      // padding: EdgeInsets.all(defaultPadding / 2),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () async {
                              final url = Uri.parse(
                                  'https://www.linkedin.com/in/rodolfo-martins-b117707a/');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () async {
                              final url =
                                  Uri.parse('https://github.com/rodmsdev/');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/behance.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
