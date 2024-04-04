import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/login.dart';

class permissionpage extends StatelessWidget {
  const permissionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 155, 27),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/permission.png"))),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Booking.com!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Hostel booking app collects location data to personalise  suggested hostels,offers and destinations to improve your booking exeperience.This  data is also used to enable SOS emergency services to provide optimal resolution to your  problem",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
              child: Text(
                "please choose  allow all the time when asked for location access",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.black),
                  child: Center(
                      child: Text(
                    "Allow",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginpage(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
