

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project/Api&Url/ApiClass.dart';

class historypage extends StatefulWidget {
  const historypage({super.key});

  @override
  State<historypage> createState() => _historypageState();
}

class _historypageState extends State<historypage> {
  String name="";
  String loca="";
  String pric="";
  String im="";
  String cheout="";
  String chein="";
  List result=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bookinghisdetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: ListView.builder(itemCount: result.length,
      itemBuilder:(BuildContext context, index) {
return Container(child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3.6,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color.fromARGB(95, 197, 189, 189),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(result[index]["hostel_image"]))),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 3,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                result[index]["hname"],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(result[index]["hostel_loc"]),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee_outlined,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Text(result[index]["hostel_price"].toString())
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 10,
                                  ),
                                  Text("4.5"),SizedBox(width: 4,),
                                  Text(
                                    "(999)",style: TextStyle(color: Colors.grey),
                               
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 13,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color.fromARGB(95, 197, 189, 189),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Text(result[index]["checkin"],style: TextStyle(color: Colors.grey),), Text("checkin",style: TextStyle(fontWeight: FontWeight.bold),)],
                            ),

                            Icon(Icons.arrow_circle_right_outlined,color: Colors.black54,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Text(result[index]["checkout"],style: TextStyle(color: Colors.grey)), Text("checkout",style: TextStyle(fontWeight: FontWeight.bold))],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),);
      
    })),);
  }
  void bookinghisdetails()async {
  print("iiiiiiii");
      final formData =
          FormData.fromMap({"checkin": chein,"checkout":cheout ,"hostel_price":pric,"hostel_loc":loca,"hname":name,"hostel_image":im});
      result = (await ApiClass().BookedhisApi()) 
      as List;
      print("oooooooooooooooooooooooooooooooooooooooooo$result");
      print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm${result}");
setState(() { 
  
});
}}