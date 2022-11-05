import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:boride/global/global.dart';
import 'package:boride/widgets/info_design_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../brand_colors.dart';
import '../splashScreen/splash_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Ionicons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Brand-Bold",
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //name
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      icon: Icon(Icons.person_rounded),
                      color: Colors.grey[400],
                      iconSize: 45,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userModelCurrentInfo!.name!,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      width: 270,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 0.5,
                      ),
                    ),
                    Text(userModelCurrentInfo!.phone!,
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                          fontSize: 17.0,
                          color: Colors.black54,
                          //fontWeight: FontWeight.bold,
                        ))),
                  ],
                ),
              ],
            ),
            Container(
              width: 385,
              child: Divider(
                color: Colors.grey.shade200,
                thickness: 8,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 18),
                    child: Icon(Icons.email_outlined)),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(userModelCurrentInfo!.email!,
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                        fontSize: 17.0,
                        color: Colors.black54,
                        //fontWeight: FontWeight.bold,
                      ))),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 30,
                    width: 75,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Verify",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: BrandColors.colorPrimaryDark,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 14.0, bottom: 10, top: 10),
                    child: Text(
                      "Favorite Places",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 22,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 370,
                    child: Divider(
                      thickness: 0.2,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.work_outline,
                          size: 22,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Work",
                          style: TextStyle(
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
            Container(
              width: 385,
              child: Divider(
                color: Colors.grey.shade200,
                thickness: 8,
              ),
            ),

            //       InfoDesignUIWidget(
            //   textInfo: userModelCurrentInfo!.email!,
            //  iconData: Icons.email_outlined,
            // ),

            SizedBox(
              height: 250,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ElevatedButton(
                onPressed: () {
                  fAuth.signOut();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (c) => const MySplashScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: BrandColors.colorPrimaryDark,
                  //primary: Colors.white,
                ),
                child: Container(
                  height: 50,
                  width: 85,
                  child: Row(
                    children: [
                      Icon(
                        Icons.output_rounded,
                        color: Colors.red[600],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      const Text(
                        "Sign Out",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: BrandColors.colorPrimaryDark,

                  //primary: Colors.white,
                  //shape: StadiumBorder()
                ),
                child: Container(
                  width: 130,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete_outline,
                        color: Colors.red[600],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      const Text(
                        "Delete Account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )

            //phone
            //        InfoDesignUIWidget(
            //    textInfo: userModelCurrentInfo!.phone!,
            //    iconData: Icons.phone_iphone_rounded,
          ],
        ),
      ]),
    );
  }
}
