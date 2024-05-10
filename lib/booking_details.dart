import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/conform_page.dart';
import 'package:shared_preferences/shared_preferences.dart';



class booking_details extends StatefulWidget {
  const booking_details({super.key});

  @override
  State<booking_details> createState() => _booking_detailsState();
}

class _booking_detailsState extends State<booking_details> {

  String chin="";
  String chout="";
  String rm="";
   String name="";
  String loc="";
  String pri="";
  String im="";
  String cin="";
  String cout="";
  Map result={};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load();
    
  }
  Future<void> load() async{
    SharedPreferences pref= await SharedPreferences.getInstance();
    setState(() {
      chin=pref.getString("date1")??"no data found";
      chout=pref.getString("date2")??"no  data found";
      rm=pref.getString("room")??"no data found";
      name=pref.getString("name")??"no found";
      im=pref.getString("image")??"no found";
      loc=pref.getString("location")??" no found";
      pri=pref.getString("price").toString();
    
    });
    print("bbbbbbbbbbbbbbbbbbbbbbbbbbb$name");
     print("bbbbbbbbbbbbbbbbbbbbbbbbbbb$pri");
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 2, color: Color.fromARGB(255, 235, 229, 229))),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Kochi"),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width / 1.5,
                      ),
                      Icon(Icons.close)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "$chin",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Check in",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 19,
                              width: 2,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "$chout",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Check out",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 19,
                              width: 2,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "$rm",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Room",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 236, 231, 231))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sort by"),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.sort)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 236, 231, 231))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Filter"),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.filter_list)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage("$im"),fit:BoxFit.fill )
                            ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 26,
                                    width: MediaQuery.of(context).size.width / 6,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.red),
                                    child: Center(child: Text("70% off")),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.6,
                                    height: 2,
                                    
                                  ),
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.favorite_outline_sharp),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("4.5"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("(999)"),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.orange,
                            size: 18,
                          ),
                          Text("$loc",style: TextStyle(fontSize: 11))
                        ],
                      ),
                      Row(
                        children: [Text("$name",),],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.black,
                            size: 10,
                          ),
                          Text(
                            "$pri",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.currency_rupee,
                            size: 10,
                          ),
                          Text("2999", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 16,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Colors.black),
                    child: Center(
                        child: Text(
                      "Conform",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                  ),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Conform(),));},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
//   void bookingdetails()async {
//   print("iiiiiiii");
//       final formData =
//           FormData.fromMap({"checkin": cin,"checkout":cout ,"hostel_price":pri,"hostel_loc":loc,"hname":name,"hostel_image":im});
//       result = (await ApiClass().BookedhisApi()) 
//       as Map;
//       print("oooooooooooooooooooooooooooooooooooooooooo$result");
// setState(() { 
//   bookingdetails();
// });

}

