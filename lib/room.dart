import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/booking_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

class room extends StatefulWidget {
  const room({super.key});

  @override
  State<room> createState() => _roomState();
}

class _roomState extends State<room> {
  String dropdwonvalue = "Single Room";
  var items = ["Single Room", "Dormitory", "Three sharing"];
  bool _first1 = true;
  String indate="";
  String out="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
Future<void> loadData() async{
  SharedPreferences pref1 = await SharedPreferences.getInstance();
  setState(() {
    indate= pref1.getString("date1")??"no found data";
    out=pref1.getString("date2")??"no fond data";
  });
  print("vvvvvvvvvvvvvvvvvvvvvvvvvvvvv${indate}");
}
Future<void> save1() async{
  SharedPreferences pref2= await SharedPreferences.getInstance();
  setState(() {
    pref2.setString("room", dropdwonvalue.toString());
     print("ssssssssssssssssssssssssss${dropdwonvalue}");
  });
 

}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 225, 214, 214),
                      )),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Chech in",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: MediaQuery.of(context).size.height / 14,
                            ),
                            Text(":"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("$indate")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Chech out",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: MediaQuery.of(context).size.height / 16,
                            ),
                            Text(":"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("$out")
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     children: [
                      //       Text("Room ",
                      //           style: TextStyle(fontWeight: FontWeight.bold)),
                      //       SizedBox(
                      //         width: MediaQuery.of(context).size.height / 11,
                      //       ),
                      //       Text(":"),
                      //       SizedBox(
                      //         width: 5,
                      //       ),
                      //       Container(
                      //         height: MediaQuery.of(context).size.height / 18,
                      //         width: MediaQuery.of(context).size.width / 3,
                      //         child: DropdownButton(
                      //             value: dropdwonvalue,
                      //             items: items.map((String items) {
                      //               return DropdownMenuItem(
                      //                   value: items, child: Text(items));
                      //             }).toList(),
                      //             onChanged: (String? newvalue) {
                      //               setState(() {
                      //                 dropdwonvalue = newvalue!;
                      //               });
                      //             }),
                      //       )
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 225, 214, 214),
                      )),
                  child: Column(
                    children: [
                     Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Room ",
                                style: TextStyle(fontSize: 18)),
                            SizedBox(
                              width: MediaQuery.of(context).size.height / 9,
                            ),
                            Text(":"),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 26,
                              width: MediaQuery.of(context).size.width / 2,
                              child: DropdownButton(
                                  value: dropdwonvalue,
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                        value: items, child: Text(items));
                                  }).toList(),
                                  onChanged: (String? newvalue) {
                                    setState(() {
                                      save1();
                                      dropdwonvalue = newvalue!;
                                    });
                                  }),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Number of people:",
                                style: TextStyle(fontSize: 18)),
                            Expanded(
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height / 30,
                                width: 100,
                                child: TextField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50, width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(14)),
                  child: FloatingActionButton.extended(
                    label: Text(
                      "Add room",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    backgroundColor: Color.fromARGB(255, 249, 247, 247),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      setState(() {
                        _first1 = !_first1;
                      });
                    },
                  ),
 
                  // child: Container(
                  //   width: double.infinity,
                  //   height: MediaQuery.of(context).size.height / 16,

                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20),
                  //       border: Border.all(width: 2, color: Colors.black)),
                  //   child: Center(
                  //       child: Text(
                  //     "Add room",
                  //     style: TextStyle(fontWeight: FontWeight.bold),
                  //   )),
                  // ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedPhysicalModel(
                  duration: Duration(seconds: 1),
                  color: !_first1 ? Colors.black: Colors.white,
                  elevation: 0,
                  shadowColor: Colors.black45,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(19),
                  child: InkWell(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "Apply",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => booking_details(),
                          ));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
