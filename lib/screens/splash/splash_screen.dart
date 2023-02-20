import 'package:flutter/material.dart';
import 'package:flutter_ptf/screens/constants.dart';
import 'package:flutter_ptf/screens/home/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Rodolfo Martins Silva",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: defaultPadding),
            TweenAnimationBuilder(
              curve: Curves.fastOutSlowIn,
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 2),
              onEnd: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              ),
              builder: (context, double value, child) => Column(
                children: [
                  SizedBox(
                    width: 250,
                    child: LinearProgressIndicator(
                      backgroundColor: darkColor,
                      value: value,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: defaultPadding / 2),
                  Text((value * 100).toInt().toString() + "%"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
