import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DriverArrive extends StatelessWidget {
  const DriverArrive({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(0)),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(3),
          height: 160,
          width: 320,
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: 2,
                width: 27,
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "1min, 0.5Km away",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "DKA-707-FV",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Toyota-Corolla, Black")
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Transform.scale(
                    scaleX: -1,
                    child: Image.asset(
                      "images/car_black.png",
                      width: MediaQuery.of(context).size.width * 0.27,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/IMG_4150.jpg'),
                    radius: 29,
                    //width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Ahmad Umar",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                          Text("4.5, "),
                          Text("100+ trips")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.phone)),
                ],
              ),
            ],
          )),
    );
  }
}
