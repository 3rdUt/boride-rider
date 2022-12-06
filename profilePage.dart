import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';

import 'edit_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: const Text(
          "Profile Page",
          style: TextStyle(fontFamily: "Brand-bold", color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.0,
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //name
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                    icon: const Icon(Icons.person_rounded),
                                    color: Colors.grey[400],
                                    iconSize: 45,
                                    onPressed: () {},
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Ahmad Umar",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontFamily: "Brand-Regular",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text(
                                  "08103249417",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: "Brand-Regular",
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),

                          SizedBox(
                            width: 385,
                            child: Divider(
                              color: Colors.grey.shade200,
                              thickness: 5,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 18),
                                  child: const Icon(Icons.email_outlined)),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: const Text("ahmadumar0110@gmail.com",
                                    style: TextStyle(
                                      fontFamily: "Brand-Regular",
                                      fontSize: 16.0,
                                      color: Colors.black54,
                                      //fontWeight: FontWeight.bold,
                                    )),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
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
                          const SizedBox(
                            height: 5,
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
                                      fontFamily: "Brand-Bold",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: const Icon(
                                              Ionicons.home_outline)),
                                      Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        child: const Text("Home",
                                            style: TextStyle(
                                              fontFamily: "Brand-Regular",
                                              fontSize: 16.0,
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: GestureDetector(
                                              child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Icon(Ionicons.add)),
                                              onTap: () {},
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: const Icon(
                                              Ionicons.briefcase_outline)),
                                      Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        child: const Text("Work",
                                            style: TextStyle(
                                              fontFamily: "Brand-Regular",
                                              fontSize: 16.0,
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: GestureDetector(
                                              child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Icon(Ionicons.add)),
                                              onTap: () {},
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: const Icon(
                                              Ionicons.location_outline)),
                                      Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        child: const Text("Favorite",
                                            style: TextStyle(
                                              fontFamily: "Brand-Regular",
                                              fontSize: 16.0,
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: GestureDetector(
                                              child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Icon(Ionicons.add)),
                                              onTap: () {},
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 370,
                                  child: Divider(
                                    thickness: 0.1,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 35),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EditPage()));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 40),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 40),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 40),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                          ),

                          //phone
                          //        InfoDesignUIWidget(
                          //    textInfo: userModelCurrentInfo!.phone!,
                          //    iconData: Icons.phone_iphone_rounded,
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
