import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool choosed;
  final double result;
  final int age;

  ResultScreen(
      {required this.result, required this.age, required this.choosed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 15, 30, 1.0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Результат",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "Ваши затраты составят:",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${result.round()} ₸",
                        style: const TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: const Color.fromARGB(255, 22, 25, 46),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Вы бы потратили столько денег использовав ${!choosed ? 'PLA' : 'ABS'} ',
                      style: TextStyle(color: Colors.white54, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
