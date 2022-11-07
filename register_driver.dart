import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewDriver extends StatefulWidget {
  const NewDriver({Key? key}) : super(key: key);

  @override
  State<NewDriver> createState() => _NewDriverState();
}

class _NewDriverState extends State<NewDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            "Signup As A Driver",
            style: TextStyle(color: Colors.black),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(18),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // padding: EdgeInsets.all(8),
                    child: Text("Full Name"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    //     margin: EdgeInsets.all(12),
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 245, 247),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixStyle: TextStyle(color: Colors.black),
                          // prefixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // padding: EdgeInsets.all(8),
                    child: Text("Email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    //     margin: EdgeInsets.all(12),
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 245, 247),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixStyle: TextStyle(color: Colors.black),
                          // prefixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 10, top: 8),
                child: Text("Select City"),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, right: 8),
                child: DropdownButton<String>(
                  hint: Text("States"),
                  elevation: 8,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  items: <String>['Abuja', 'Kaduna'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8), child: Text("Phone Number")),
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
                      prefixText: "+234 ",

                      prefixStyle: TextStyle(color: Colors.black),
                      hintText: "9256802448",
                      // prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VehicleInfo()),
                    );
                  },
                  child: Row(
                    children: [Icon(Icons.arrow_right_sharp), Text("Next")],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class VehicleInfo extends StatefulWidget {
  const VehicleInfo({Key? key}) : super(key: key);

  @override
  State<VehicleInfo> createState() => _VehicleInfoState();
}

class _VehicleInfoState extends State<VehicleInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Text(
          "Vehicle Information",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(18),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Text("Vehicle Color"),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: DropdownButton<String>(
                items: <String>[
                  'Black',
                  'White',
                  'Beige',
                  'Maroon',
                  'Yellow',
                  'Blue',
                  'Green',
                  'Red',
                  'Grey',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text("Vehicle Brand"),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: DropdownButton<String>(
                items: <String>[
                  'Toyota',
                  'Honda',
                  'Mercedes',
                  'BMW',
                  'Audi',
                  'Peugeot',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text("Enter Vehicle Model"),
            ),
            Container(
              //     margin: EdgeInsets.all(12),
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 245, 247),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "eg Camry, Corolla, Accord, e.t.c",
                    prefixStyle: TextStyle(color: Colors.black),
                    // prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                "if your vehicle model is not listed here, email us at boride@gmail.com"),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text("Vehicle Year"),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: DropdownButton<String>(
                items: <String>[
                  '2005',
                  '2006',
                  '2007',
                  '2008',
                  '2009',
                  '2010',
                  '2011',
                  '2012',
                  '2013',
                  '2014',
                  '2015',
                  '2016',
                  '2017',
                  '2018',
                  '2019',
                  '2020',
                  '2021',
                  '2022',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            Text("License Plate Number"),
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
                    hintText: "DKA-707-PV",
                    // prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LegalInfo()),
                  );
                },
                child: Row(
                  children: [Icon(Icons.arrow_right_sharp), Text("Next")],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LegalInfo extends StatefulWidget {
  const LegalInfo({Key? key}) : super(key: key);

  @override
  State<LegalInfo> createState() => _LegalInfoState();
}

class _LegalInfoState extends State<LegalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Text(
          "Drivers License Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(18),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Text("Driver License Number"),
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
                    hintText: "XXXXXXXXX",
                    hintStyle: TextStyle(fontFamily: "Brand-Regular"),
                    labelStyle: TextStyle(fontFamily: "Brand-Regular"),
                    // prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewDriver()),
                  );
                },
                child: Row(
                  children: [
                    Text("Continue"),
                    Icon(Icons.arrow_right_sharp),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "I cannot figure out how to change the appBar's automatic back button to a different color.")
          ],
        ),
      ),
    );
  }
}
