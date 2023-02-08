import 'package:eshopy/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import '../../constants/style.dart';
import '../on_board/on_board.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('TeenStore', style: splashScreenTextStyle),
            smallSizedBox,
            Image.asset(
              'assets/images/splash_1.png',
              width: 250,
              height: 250,
            )
          ],
        ),
      ),
    );
  }
}
