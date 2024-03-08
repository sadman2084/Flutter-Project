import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double res = 0, a = 0, b = 0;
  var dis = '';

  void calc(String s) {
    if (s == 'AC') {
      setState(() {
        dis = '';
      });
    } else {
      setState(() {
        dis += s;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Calculator"),
        titleSpacing: 125,
        elevation: 10,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
          border: Border.all(color: Colors.black, width: 8),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              margin: const EdgeInsets.fromLTRB(3, 0, 3, 0),
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black87, width: 5),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      dis,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      calc('AC');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.redAccent),
                    ),
                    child: const Text(
                      "AC",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('DEL');
                    },
                    child: const Text("DEL"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('x^2');
                    },
                    child: const Text(
                      "x²",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('root');
                    },
                    child: const Text(
                      '√',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      calc('sin');
                    },
                    child: const Text("sin"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('cos');
                    },
                    child: const Text("cos"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('tan');
                    },
                    child: const Text('tan'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('%');
                    },
                    child: const Text('%'),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      calc('7');
                    },
                    child: const Text("7"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('8');
                    },
                    child: const Text("8"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('9');
                    },
                    child: const Text("9"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('/');
                    },
                    child: const Text("/"),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      calc('4');
                    },
                    child: const Text("4"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('5');
                    },
                    child: const Text("5"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('6');
                    },
                    child: const Text("6"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('*');
                    },
                    child: const Text("*"),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      calc('1');
                    },
                    child: const Text("1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('2');
                    },
                    child: const Text("2"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('3');
                    },
                    child: const Text("3"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('-');
                    },
                    child: const Text("-"),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      calc('=');
                    },
                    child: const Text("="),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('0');
                    },
                    child: const Text("0"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('.');
                    },
                    child: const Text(
                      ".",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calc('+');
                    },
                    child: const Text("+"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
