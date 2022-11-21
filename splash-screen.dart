import 'dart:async';
import 'package:boride/mainScreens/profile-test.dart';
import 'package:boride/mainScreens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:boride/assistants/assistant_methods.dart';
import 'package:boride/authentication/login_screen.dart';
import 'package:boride/global/global.dart';
import 'package:boride/mainScreens/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    fAuth.currentUser != null
        ? AssistantMethods.readCurrentOnlineUserInfo()
        : null;

    Timer(const Duration(seconds: 5), () async {
      if (await fAuth.currentUser != null) {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (c) => const MainScreen()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (c) => const MainScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();

    AssistantMethods.readCurrentOnlineUserInfo();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: const Center(
          child: Text(
            "Boride",
            style: TextStyle(
                fontSize: 65,
                fontFamily: "Brand-Regular",
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.indigo.shade500,
              Colors.indigo.shade600,
              Colors.indigo.shade800,
              Colors.indigo.shade900,
            ],
          ),
        ),
      ),
    );
  }
}
