import 'package:flutter/material.dart';
import 'package:project/booked.dart';
import 'package:project/history.dart';

class booking extends StatefulWidget {
  const booking({super.key});

  @override
  State<booking> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<booking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My bookings",style: TextStyle(fontWeight: FontWeight.bold),),
            automaticallyImplyLeading: false,
            bottom: TabBar(tabs: [
              Tab(
                text: "Booked",
              ),
              Tab(
                text: "History",
              )
            ],indicatorColor: Colors.black,indicatorWeight: 2,labelColor: Colors.black,indicatorSize: TabBarIndicatorSize.tab,),
          ),
          body: TabBarView(children: [bookedpage(), historypage()]),
        ));
  }
}
