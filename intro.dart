import 'package:boride/authentication/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "How Does it Work?",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Center(
            child: Column(children: [
              Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(0),
                  child: Center(
                      child: Row(
                    children: [
                      SvgPicture.asset(
                        'images/undraw_mobile_login_re_9ntv.svg',
                        height: 120,
                      ),
                      Text(
                        "1.Enter Phone Number \n2.Then Full Name \nand Email",
                        style: TextStyle(
                            fontFamily: "Brand-Regular", fontSize: 16),
                      )
                    ],
                  ))),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Center(
                      child: Row(
                    children: [
                      SvgPicture.asset(
                        'images/undraw_my_location_re_r52x.svg',
                        height: 130,
                      ),
                      Text(
                        "Search The Location",
                        style: TextStyle(
                            fontFamily: "Brand-Regular", fontSize: 16),
                      )
                    ],
                  ))),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Center(
                      child: Row(
                    children: [
                      SvgPicture.asset(
                        'images/undraw_map_re_60yf.svg',
                        height: 130,
                      ),
                      Text(
                        "Get Matched With \nA Driver",
                        style: TextStyle(
                            fontFamily: "Brand-Regular", fontSize: 16),
                      )
                    ],
                  ))),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Center(
                      child: Row(
                    children: [
                      SvgPicture.asset(
                        'images/undraw_current_location_re_j130.svg',
                        height: 130,
                      ),
                      Text(
                        "Add Favorite locations\nIn Settings",
                        style: TextStyle(
                            fontFamily: "Brand-Regular", fontSize: 16),
                      )
                    ],
                  ))),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  },
                  child: Text("Log In"),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
