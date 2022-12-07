import 'dart:math';
import 'package:flutter/material.dart';
import 'result.dart';

class Input extends StatefulWidget {
  const Input({super.key});
  @override
  InputState createState() => InputState();
}

class InputState extends State<Input> {
  bool choosed = true;
  double length = 10.0;
  double width = 1.75;
  int dense = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 15, 30, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(10, 15, 30, 1.0),
        title: const Text(
          "Калькулятор",
        ),
      ),
      body: Column(
        children: [
          /*Male or Female Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          choosed = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: choosed
                              ? Colors.green[300]
                              : const Color.fromARGB(255, 22, 25, 46),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 15.0,
                              ),
                              Image.asset(
                                'assets/image/ABS.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "PLA",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          choosed = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: !choosed
                              ? Colors.green[300]
                              : const Color.fromARGB(255, 22, 25, 46),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 15.0,
                              ),
                              Image.asset(
                                'assets/image/PLA.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "ABS",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /*Height Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: const Color.fromARGB(255, 22, 25, 46),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Длина",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${length.round()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text(
                            "M",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value: length,
                          min: 10.0,
                          max: 350.0,
                          onChanged: (value) {
                            setState(() {
                              length = value;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 160, 161, 173),
                          inactiveColor: const Color.fromARGB(255, 88, 89, 104),
                          thumbColor: Colors.green[300]),
                    ]),
              ),
            ),
          ),

          /*Weight and Age Section*/
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: const Color.fromARGB(255, 22, 25, 46),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Толщина",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "$width",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.green[300],
                              onPressed: () {
                                setState(() {
                                  if (width <= 3.5) {
                                    width = 1.75;
                                  }
                                  width -= 1.75;
                                });
                              },
                              heroTag: 'Weight-',
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.green[300],
                              onPressed: () {
                                setState(() {
                                  width += 1.75;
                                });
                              },
                              heroTag: 'Weight+',
                              mini: true,
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: const Color.fromARGB(255, 22, 25, 46),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Плотность",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "$dense",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.green[300],
                              onPressed: () {
                                setState(() {
                                  if (dense <= 100) {
                                    dense = 100;
                                  }
                                  dense -= 100;
                                });
                              },
                              heroTag: 'age-',
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.green[300],
                              onPressed: () {
                                setState(() {
                                  dense += 100;
                                });
                              },
                              heroTag: 'age+',
                              mini: true,
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),

          /*Calculate Button Section*/
          Container(
            decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                )),
            width: double.infinity,
            height: 75.0,
            child: MaterialButton(
              onPressed: () {
                
  double price = choosed ? 27.5 : 90;
                double result =
                    (length * price) * (width / 1.75) * (dense / 100);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        result: result,
                        age: dense,
                        choosed: choosed,
                      ),
                    ));
              },
              child: const Text(
                "Рассчитать",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
