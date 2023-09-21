import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:suuz/Navigation/home.dart';
import 'package:suuz/provider/db_provider.dart';
import 'package:suuz/register/user_register.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  bool? firstTime;

  checking() async {
    firstTime = await DatabaseProvider().getFirstTime();
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (firstTime == false) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(child: Home(), type: PageTransitionType.fade),
            (route) => false);
        timer.cancel();
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                child: UserRegister(), type: PageTransitionType.fade),
            (route) => false);
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    checking();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('image/sharda/logo_sharda.png'),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText("Future is here!"),
            TyperAnimatedText("Let's begin"),
          ])
        ],
      ),
    );
  }
}
