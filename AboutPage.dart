import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 290),
            child: Column(
              children: [
                SizedBox(
                  child: Center(
                    child: Image.asset(
                      "images/Boride Logo P.png",
                      scale: MediaQuery.of(context).size.aspectRatio * 5.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0,
                ),
                Column(
                  children: const [
                    Text(
                      "Get Home. Get Around !",
                      style: TextStyle(
                          fontFamily: "Brand-Bold",
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //about you & your company - write some info
                    Text(
                      "Welcome to Boride, the ride hailing Service where we put our users first. We are dedicated to making sure Our users have the best experience possible, From your first ride, to every ride thereafter, we are committed. ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Brand-Regular",
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          )),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Developed By UATech",
              style: TextStyle(fontSize: 16, fontFamily: "Brand-Regular"),
            ),
          ))
        ],
      ),
    );
  }
}
