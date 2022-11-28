import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:ionicons/ionicons.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Support",
            style: TextStyle(
                fontFamily: "Brand-Regular", color: Colors.black, fontSize: 24),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Have a Quick question?",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Brand-Regular",
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              // Add one stop for each color. Stops should increase from 0 to 1
                              // stops: const [0.1, 0.3, 0.2, 1.5],
                              colors: [Colors.blue, Colors.indigo],
                            ),
                          ),
                          width: 170,
                          height: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "Brand-Bold",
                                          color: Colors.white
                                          //color: Color.fromARGB(228, 255, 255, 255),
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                const Icon(
                                  Ionicons.mail_outline,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Boridehq@gmail.com",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: "Brand-Bold"),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomCenter,
                              // Add one stop for each color. Stops should increase from 0 to 1
                              // stops: const [0.1, 0.3, 0.2, 1.5],
                              colors: [Colors.blue, Colors.indigo],
                            ),
                          ),
                          width: 170,
                          height: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Phone",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "Brand-Bold",
                                          color: Colors.white
                                          //color: Color.fromARGB(228, 255, 255, 255),
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                const Icon(
                                  Ionicons.call_outline,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "08101002396",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: "Brand-Bold"),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "08103249417",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: "Brand-Bold"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            // boxShadow: [
                            //    BoxShadow(
                            //  color: Colors.black,
                            //     blurRadius: 4,
                            //     offset: Offset(1, 2), // Shadow position
                            //    ),
                            //  ],
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(50)),
                        height: 70,
                        width: 70,
                        child: const Icon(
                          Ionicons.headset_outline,
                          size: 40,
                          color: Colors.indigo,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "24 Hours Support !",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "Brand-Bold",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
