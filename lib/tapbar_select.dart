import 'package:flutter/material.dart';
import 'package:project/check_in.dart';
import 'package:project/check_out.dart';
import 'package:project/room.dart';

class date extends StatefulWidget {
  int Selectpage;
date({super.key,required this.Selectpage});

  @override
  State<date> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<date> with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<String> titleLists=["Check in","Check out"," Room"];
  late String currentTitle;
  @override
  void initState() {
    // TODO: implement initState
    
    currentTitle=titleLists[0];
    tabController=TabController(initialIndex: widget.Selectpage,
      length: 3, vsync: this);
      tabController.addListener(chageTitle);
  }
  void chageTitle(){
    setState(() {
      currentTitle=titleLists[tabController.index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select",style: TextStyle(fontWeight: FontWeight.bold),),
        
        bottom: TabBar(controller: tabController,  tabs: [ Tab(
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
      body: TabBarView(controller: tabController, children: [check_in(), check_out( ),room()]),
    );
  }
}
