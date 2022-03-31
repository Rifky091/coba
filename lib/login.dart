import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 163, 21, 11),
          title: Container(
            width: double.infinity,
            height: 40,
            child: Image.asset(
              "images/upi.png",
              height: 150,
            ),
          ),
        ),
        body: Center(
          child: ListView(padding: EdgeInsets.all(20), children: [
            Container(
                decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child: Text('Hello World 1a')),
            Container(
                decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(14),
                child: Text('Hello World xxx')),
          ]),
        ),
      ),
    );
  }
}

//Tambahin kesini
//membuat class custom card
