import 'package:boride/mainScreens/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String fullName = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: const Text(
          "Edit Information",
          style: TextStyle(color: Colors.black, fontFamily: "Brand-Regular"),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
              right: MediaQuery.of(context).size.width * 0.02,
              top: MediaQuery.of(context).size.height * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              const Text(
                "Enter Your New Full Name and or Email to Update your Information",
                style: TextStyle(
                    fontFamily: "Brand-Bold",
                    fontSize: 15,
                    color: Colors.black87),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      height: 55,
                      width: 350,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 245, 247),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          textCapitalization: TextCapitalization.words,
                          onChanged: (value) {
                            setState(() {
                              fullName = value;
                            });
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(null)
                          ],
                          decoration: const InputDecoration(
                            hintText: "Full Name",
                            hintStyle: TextStyle(fontFamily: "Brand-Regular"),
                            labelStyle: TextStyle(fontFamily: "Brand-Regular"),
                            // prefixIcon: Icon(Icons.person),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 55,
                      width: 350,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 245, 247),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textCapitalization: TextCapitalization.words,
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                          decoration: const InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(fontFamily: "Brand-Regular"),
                            //  prefixIcon: Icon(Icons.person),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 370,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            "Your Phone Number Cant Be Changed, If You Want To Link Your Account To another Phone Number, contact Customer Support.",
                            style: TextStyle(
                                fontFamily: "Brand-Regular",
                                fontSize: 12,
                                color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.2),
                      child: ElevatedButton(
                          onPressed: () async {
                            updateProfile();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                                fontFamily: "Brand-Bold",
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  updateProfile() {
    Map profileMap = {
      "id": FirebaseAuth.instance.currentUser!.uid,
      "name": fullName,
      "email": email,
      "phone": FirebaseAuth.instance.currentUser!.phoneNumber,
    };

    DatabaseReference profileRef = FirebaseDatabase.instance
        .ref()
        .child("users")
        .child(FirebaseAuth.instance.currentUser!.uid);
    profileRef.set(profileMap);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MainScreen()));
  }
}
