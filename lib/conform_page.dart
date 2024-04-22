import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project/home.dart';
import 'package:project/homepage.dart';
import 'package:project/tapbar_select.dart';

class Conform extends StatefulWidget {
  const Conform({super.key});

  @override
  State<Conform> createState() => _ConformState();
}

class _ConformState extends State<Conform> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              Lottie.network(
                  "https://lottie.host/af0cf720-2e17-44be-86af-e43aec97631c/Sz7tjwmH5i.json"),
              InkWell(
                child: Text(
                  "BACK TO HOME",
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => home(),maintainState: true), (route) => false);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
