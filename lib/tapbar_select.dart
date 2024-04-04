import 'package:flutter/material.dart';
import 'package:project/check_in.dart';
import 'package:project/check_out.dart';
import 'package:project/room.dart';

class date extends StatefulWidget {
  const date({super.key});

  @override
  State<date> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<date> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Select",style: TextStyle(fontWeight: FontWeight.bold),),
            
            bottom: TabBar(tabs: [ Tab(
                text: "Check in",
              ),
              Tab(
                text: "Check out",
              ),
              Tab(
                text: "Room ",
              )
            ],indicatorColor: Colors.black,indicatorWeight: 2,labelColor: Colors.black,indicatorSize: TabBarIndicatorSize.tab,),
          ),
          body: TabBarView(children: [check_in(), check_out(),room()]),
        ));
  }
}
