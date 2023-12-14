import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white,
            child: const Column(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 150,
                        ),
                        Text("MALE")
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.female, size: 150),
                        Text("FEMALE"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "176",
                          style: kTextstyle,
                        ),
                        Text("Height"),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: kbuttonstyleadd,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: kbuttonstyleremove,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("85", style: kTextstyle),
                        Text("Weight"),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: kbuttonstyleadd,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: kbuttonstyleremove,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Text(
                    "BMI Value",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "22",
                    style: kTextstyle,
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
