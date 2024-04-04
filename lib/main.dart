import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amberAccent),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => loginpage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        
          child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Booking",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
                ),
                Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.orangeAccent,
                  ),
                  child: Center(child: Text(".com")),
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
