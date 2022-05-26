/*import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController generate = TextEditingController();
  Random r1 = Random();
  dynamic otp = "";
  String val = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15172b),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 1000, height: 30),
            Container(
              child: const Text(
                "OTP Generator",
                style: TextStyle(
                  color: Color(0xfff6db87),
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              height: 80,
              width: 300,
              child: TextField(
                  // onChanged: (val){
                  //   generate =val as TextEditingController;
                  // },
                  controller: generate,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xfffcf6ba),
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xfffcf6ba),
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfffcf6ba))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfffcf6ba))),
                      label: Text(
                        "Enter OTP Length",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xfffcf6ba),
                        ),
                      ))),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffffe8b8),
                    Color(0xfff6db87),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      val = generate.text;
                      if (generate.text.length > 0 && generate.text.length < 7) {
                        if (int.parse(generate.text) == 1) {
                          otp = r1.nextInt(9);
                        }
                        if (int.parse(generate.text) == 2) {
                          otp = r1.nextInt(99);
                        }
                        if (int.parse(generate.text) == 3) {
                          otp = r1.nextInt(999);
                        }
                        if (int.parse(generate.text) == 4) {
                          otp = r1.nextInt(9999);
                        }
                        if (int.parse(generate.text) == 5) {
                          otp = r1.nextInt(99999);
                        }
                        if (int.parse(generate.text) == 6) {
                          otp = r1.nextInt(999999);
                        }
                        print(otp);
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white.withOpacity(0),
                  ),
                  child: Text(
                    "Generate OTP",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff15172b),
                    ),
                  )),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.center,
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffffe8b8),
                    Color(0xfff6db87),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "$otp",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 40,
                  color: Color(0xff15172b),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffffe8b8),
                    Color(0xfff6db87),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      otp = " ";
                      generate.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white.withOpacity(0),
                  ),
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff15172b),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  /* List mycolor =[
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
  ];*/
  Random r1 = Random();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 1000),
          Container(
            child: const Text(
              "Color Palette \n   Generator",
              style: TextStyle(
                color: Color(0xff3bb3f9),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 100),
          Column(
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
              ),
              Container(
                  height: 60,
                  width: 150,
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]),
              Container(
                  height: 60,
                  width: 150,
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]),
              Container(
                  height: 60,
                  width: 150,
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]),
              Container(
                  height: 60,
                  width: 150,
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]),
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)]),
              ),
            ],
          ),
          const SizedBox(height: 100),
          Container(
            height: 50,
            width: 200,
            child: OutlinedButton(
                onPressed: () {
                  setState(() {});
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Color(0xff3bb3f9),
                    width: 3,
                  ),
                ),
                child: Text(
                  "Generate",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3bb3f9),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
