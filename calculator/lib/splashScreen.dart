import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});
  final String title;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Calculator"),
        titleSpacing: 125,
        elevation: 10,
      ),
//-------------------------------------------------------------------------------------------------------------
      body: Container(
        height: 450,
        margin: const EdgeInsets.fromLTRB(30, 60, 30, 0),
        decoration: BoxDecoration(
          color: Colors.black38,
          border: Border.all(color: Colors.black,width: 8),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //width: 300,
              height: 70,
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.black87,width: 5),
                borderRadius: const BorderRadius.all(Radius.circular(5))
              ),
            ),
            Container(
              width: 300,
              margin: const EdgeInsets.fromLTRB(0, 0, 7, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){},child: const Text("AC"),),
                  const SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){},child: const Text("DEL"),),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},child: const Text("7"),),
                  ElevatedButton(onPressed: (){},child: const Text("8"),),
                  ElevatedButton(onPressed: (){},child: const Text("9"),),
                  ElevatedButton(onPressed: (){},child: const Text("/"),),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},child: const Text("4"),),
                  ElevatedButton(onPressed: (){},child: const Text("5"),),
                  ElevatedButton(onPressed: (){},child: const Text("6"),),
                  ElevatedButton(onPressed: (){},child: const Text("*"),),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},child: const Text("1"),),
                  ElevatedButton(onPressed: (){},child: const Text("2"),),
                  ElevatedButton(onPressed: (){},child: const Text("3"),),
                  ElevatedButton(onPressed: (){},child: const Text("-"),),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},child: const Text("="),),
                  ElevatedButton(onPressed: (){},child: const Text("0"),),
                  ElevatedButton(onPressed: (){},child: const Text("%"),),
                  ElevatedButton(onPressed: (){},child: const Text("+"),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
