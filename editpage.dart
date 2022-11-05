import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
import '../splashScreen/splash_screen.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Text(
          "Edit Page",
          style: TextStyle(color: Colors.black, fontFamily: "Brand-regular"),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 240, 239, 242),
                                      blurRadius: 1.5,
                                      spreadRadius: 5.5),
                                ]),
                            child: Icon(
                              Icons.person_rounded,
                              color: Colors.grey.shade600,
                              size: 80,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          height: 55,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 243, 245, 247),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: TextFormField(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(null)
                              ],
                              decoration: const InputDecoration(
                                hintText: "Full Name",
                                hintStyle:
                                    TextStyle(fontFamily: "Brand-Regular"),
                                labelStyle:
                                    TextStyle(fontFamily: "Brand-Regular"),
                                // prefixIcon: Icon(Icons.person),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          height: 55,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 243, 245, 247),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Phone Number",
                                hintStyle:
                                    TextStyle(fontFamily: "Brand-Regular"),
                                //  prefixIcon: Icon(Icons.person),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 370,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Your Phone Number Cant Be Changed, If You Want To Link Your Account To another Phone Number, contact Customer Support.",
                              style: TextStyle(
                                fontFamily: "Brand-Regular",
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Text("Developed By UTech"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
