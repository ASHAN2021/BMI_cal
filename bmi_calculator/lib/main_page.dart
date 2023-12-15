import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 55;
  int weight = 75;
  String gender = '';
  late double bmivalue = bmicalculate(height: height, weight: weight);
  String result = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white,
            child: Column(children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Male");
                      setState(() {
                        gender = 'M';
                      });
                    },
                    child: Container(
                      color: gender == 'M'
                          ? Colors.orange.withAlpha(150)
                          : Colors.orange.withAlpha(20),
                      padding: EdgeInsets.all(8.0),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.male,
                            size: 150,
                          ),
                          Text("MALE")
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      print("Female");
                      setState(() {
                        gender = 'F';
                      });
                    },
                    child: Container(
                      color: gender == 'F'
                          ? Colors.orange.withAlpha(150)
                          : Colors.orange.withAlpha(20),
                      padding: const EdgeInsets.all(8.0),
                      child: const Column(
                        children: [
                          Icon(Icons.female, size: 150),
                          Text("FEMALE"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "$height",
                          style: kTextstyle,
                        ),
                        const Text("Height"),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height < 250) height++;
                                  bmivalue = bmicalculate(
                                      height: height, weight: weight);
                                });

                                print(height);
                              },
                              child: kbuttonstyleadd,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 50) height--;
                                  bmivalue = bmicalculate(
                                      height: height, weight: weight);
                                });
                                print(height);
                              },
                              child: kbuttonstyleremove,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("$weight", style: kTextstyle),
                        const Text("Weight"),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight < 200) weight++;
                                  bmivalue = bmicalculate(
                                      height: height, weight: weight);
                                });
                              },
                              child: kbuttonstyleadd,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 20) {
                                    weight--;
                                    bmivalue = bmicalculate(
                                        height: height, weight: weight);
                                  }
                                });
                              },
                              child: kbuttonstyleremove,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  const Text(
                    "BMI Value",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmivalue.toStringAsFixed(2),
                    style: kTextstyle,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        getresult(bmivalue),
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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

double bmicalculate({required int height, required int weight}) {
  return (weight / (height * height)) * 1000;
}

String getresult(bmivalue) {
  if (bmivalue >= 25) {
    return 'overweight';
  } else if (bmivalue >= 18.5) {
    return 'normal';
  } else {
    return 'underweight';
  }
}
