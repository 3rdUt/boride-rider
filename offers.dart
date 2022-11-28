import 'package:boride/widgets/progress_dialog.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({Key? key}) : super(key: key);

  @override
  State<DiscountScreen> createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {
  String discountCode = "";

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
            "Promotions",
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
          Padding(
            padding: const EdgeInsets.only(
                top: 40.0, bottom: 20, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.24,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        // Add one stop for each color. Stops should increase from 0 to 1
                        stops: const [0.1, 0.5, 0.7, 0.9],
                        colors: [
                          Colors.indigo.shade500,
                          Colors.indigo.shade600,
                          Colors.indigo.shade800,
                          Colors.indigo.shade900,
                        ],
                      ),
                      //color: const Color.fromARGB(150, 200, 200, 250),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Ionicons.gift_outline,
                              color: Colors.white,
                              //color: Color.fromARGB(228, 255, 255, 255),
                              size: 35,
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Discount Type",
                                  style: TextStyle(
                                      color: Color.fromARGB(228, 255, 255, 255),
                                      fontSize: 20,
                                      fontFamily: "Brand-bold",
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You are currently on a 15% Discount",
                            style: TextStyle(
                              fontFamily: "Brand-begular",
                              fontSize: 17,
                              color: Color.fromARGB(228, 255, 255, 255),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              "images/Boride Logo.png",
                              scale: 5.5,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 223, 225, 227),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: TextFormField(
                      onChanged: (value) {
                        discountCode = value;
                      },
                      inputFormatters: [LengthLimitingTextInputFormatter(null)],
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.characters,
                      decoration: const InputDecoration(
                        hintText: "Promo-code",
                        hintStyle: TextStyle(fontFamily: "Brand-Regular"),
                        labelStyle: TextStyle(fontFamily: "Brand-Regular"),
                        // prefixIcon: Icon(Icons.person),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        verifyCode();
                      },
                      child: const Text(
                        "Add Voucher",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Brand-Bold",
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  verifyCode() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => ProgressDialog(
        message: "Verifying code",
      ),
    );
  }

  Future<void> showLoading(String message) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            width: double.infinity,
            height: 50,
            child: Text(message),
          ),
        );
      },
    );
  }
}
