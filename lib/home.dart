// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

//membuat class custom card
class CustomCard extends StatelessWidget {
  //konstruktor
  CustomCard({required this.title, required this.image});
  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {},
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOME',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 163, 21, 11),
          leading: Image.asset(
            "images/upi.png",
            height: 150,
          ),
          title: Center(
            child: Text("UPI DALAM DATA",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          actions: <Widget>[
            IconButton(
                icon: new Icon(Icons.person, color: Colors.white),
                onPressed: () {})
          ],
        ),
        body: GridView.count(
          //widget yang akan ditampilkan dalam 1 baris adalah 2
          crossAxisCount: 3,
          children: [
            //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
            CustomCard(
                title: "Daftar Fakultas", image: "assets/images/fakultas.png"),
            CustomCard(title: "FIP", image: "assets/images/FIP.jpg"),
            CustomCard(title: "FPIPS", image: "assets/images/fpips.jpg"),
          ],
        ),
      ),
    );
  }
}
