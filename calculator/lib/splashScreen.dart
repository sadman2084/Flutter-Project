import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 Padding(
                   padding: const EdgeInsets.all(0),
                    child: Text(dis,
                    textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 50,
                  ),
                 ),
                 ),
                ],
              ),
            ),
            Container(
              width: 300,
              margin: const EdgeInsets.fromLTRB(0, 0, 7, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){calc('AC');},child: const Text("AC"),),
                  const SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){calc('DEL');},child: const Text("DEL"),),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){calc('7');},child: const Text("7"),),
                  ElevatedButton(onPressed: (){calc('8');},child: const Text("8"),),
                  ElevatedButton(onPressed: (){calc('9');},child: const Text("9"),),
                  ElevatedButton(onPressed: (){calc('/');},child: const Text("/"),),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){calc('4');},child: const Text("4"),),
                  ElevatedButton(onPressed: (){calc('5');},child: const Text("5"),),
                  ElevatedButton(onPressed: (){calc('6');},child: const Text("6"),),
                  ElevatedButton(onPressed: (){calc('*');},child: const Text("*"),),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){calc('1');},child: const Text("1"),),
                  ElevatedButton(onPressed: (){calc('2');},child: const Text("2"),),
                  ElevatedButton(onPressed: (){calc('3');},child: const Text("3"),),
                  ElevatedButton(onPressed: (){calc('-');},child: const Text("-"),),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){calc('=');},child: const Text("="),),
                  ElevatedButton(onPressed: (){calc('0');},child: const Text("0"),),
                  ElevatedButton(onPressed: (){calc('%');},child: const Text("%"),),
                  ElevatedButton(onPressed: (){calc('+');},child: const Text("+"),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double  res=0,a=0,b=0;
String dis=res.toString();

void calc(String s)
{
  if(s=='+'){
    res=a+b;
  }
  else if(s=='-'){
    res=a-b;
  }
  else if(s=='*'){
    res=a+b;
  }
  else if(s=='/'){
    res=a/b;
  }
  else if(s=='%'){
    res=(a.toInt()%b.toInt()).toDouble();
  }
  else if(s!='AC'&&s!='DEL'){
    dis=s;
  }
  else if(s!='AC'&&s!='DEL') {
    dis = res.toString();
  }
}