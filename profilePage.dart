import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';
import 'package:boride/brand_colors.dart';

import '../brand_colors.dart';
import 'edit_page.dart';

class ProfileTest extends StatefulWidget {
  const ProfileTest({Key? key}) : super(key: key);

  @override
  State<ProfileTest> createState() => _ProfileTestState();
}

class _ProfileTestState extends State<ProfileTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    width: 400,
                    height: 370,
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: MediaQuery.of(context).size.width * 0.02,
                            right: MediaQuery.of(context).size.width * 0.02),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.person_rounded),
                                color: Colors.grey[400],
                                iconSize: 45,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ahmad Umar",
                                style: const TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: "Brand-Regular",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 10,
                          width: 360,
                          child: Divider(
                            thickness: 1,
                            color: Colors.black87,
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: const Icon(
                                Icons.email_outlined,
                                color: Colors.black87,
                              )),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: Text("Loading Data...",
                                style: const TextStyle(
                                  fontFamily: "Brand-Regular",
                                  fontSize: 17.0,
                                  color: Colors.black87,
                                  //fontWeight: FontWeight.bold,
                                )),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: SizedBox(
                              height: 30,
                              width: 75,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: const Text(
                                  "Verify",
                                  style: TextStyle(
                                      fontFamily: "Brand-Regular",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Icon(
                                Icons.phone_outlined,
                                color: Colors.black87,
                              )),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: Text("Loading Data...",
                                style: const TextStyle(
                                  fontFamily: "Brand-Regular",
                                  fontSize: 17.0,
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                )),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20)),
                        height: 6,
                        width: 390,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 14.0, bottom: 10, top: 10),
                              child: Text(
                                "Favorite Places",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: "Brand-Bold",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.home_outlined,
                                    size: 22,
                                    color: Colors.black87,
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Brand-Regular",
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 370,
                              child: Divider(
                                thickness: 0.2,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.work_outline,
                                    size: 22,
                                    color: Colors.black87,
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Work",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Brand-Regular",
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  height: 387,
                  width: 395,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditPage()));
                        },
                        child: Container(
                          //margin: const EdgeInsets.symmetric(horizontal: 40),
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          height: 50,
                          width: 450,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.edit),
                              SizedBox(width: 40),
                              Expanded(
                                child: Text(
                                  'Edit ',
                                  style: TextStyle(
                                    fontFamily: "Brand-Regular",
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        //margin: const EdgeInsets.symmetric(horizontal: 40),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        height: 50,
                        width: 450,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Ionicons.log_out_outline),
                            SizedBox(width: 40),
                            Expanded(
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  fontFamily: "Brand-Regular",
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        //margin: const EdgeInsets.symmetric(horizontal: 40),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        width: 450,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Ionicons.trash,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: Text(
                                'Delete Account',
                                style: TextStyle(
                                  fontFamily: "Brand-Regular",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

