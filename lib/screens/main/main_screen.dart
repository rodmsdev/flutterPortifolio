import 'package:flutter/material.dart';
import 'package:flutter_ptf/screens/responsive.dart';

import '../../menu/side_menu.dart';
import '../constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.body}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            )
          : null,
      drawer: SideMenu(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: SideMenu(),
                  ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 7,
                  child: body,
                ),
                SizedBox(width: defaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
