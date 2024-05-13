import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:project/tapbar_select.dart';
import 'package:shared_preferences/shared_preferences.dart';


class details_page extends StatefulWidget {
  
String name;
String image;
int price;
String location;
String desc;

  
   details_page({super.key,required this.name,required this.image,required this.price,required this.location,required this.desc});

  @override
  State<details_page> createState() => _details_pageState();
}

class _details_pageState extends State<details_page> {
 
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    savedata();
    // detais();
  }
   Future<void> savedata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString("name",widget.name );
      prefs.setString("image",widget.image );
      prefs.setString("location",widget.location );
      prefs.setInt("price",widget.price);

    });
    print("55555555111111111111${widget.price}");
     print("5555555555555555555555555555555${widget.name}");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.8,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 4.5,
                          
                          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.image),fit: BoxFit.fill)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.grey,
                                      child: Icon(
                                        Icons.arrow_back,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.favorite_outline,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.share,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 12),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.amber,
                                      child: Icon(Icons.abc),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height / 40,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 181, 23, 23)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "763 Photos & Videos",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                          
                          widget.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text("4.2"),
                              SizedBox(
                                width: 3,
                              ),
                              Text("(523 ratings)"),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "76 reviews",
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 2),
                          child: Row(
                            children: [
                              Text(
                                  "5.0 Check- in rating > Delightful experience ")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 230, 213, 213))),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.orange,
                        ),
                        Text(widget.location),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 24,
                          width: MediaQuery.of(context).size.width / 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black),
                          child: Center(
                              child: Text(
                            "Map",
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     height: MediaQuery.of(context).size.height / 7,
                  //     width: double.infinity,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         border: Border.all(
                  //           width: 2,
                  //           color: Color.fromARGB(255, 225, 214, 214),
                  //         )),
                  //     child: Column(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Row(
                  //             children: [
                  //               Text("Chech in",
                  //                   style:
                  //                       TextStyle(fontWeight: FontWeight.bold)),
                  //               SizedBox(
                  //                 width: MediaQuery.of(context).size.height / 14,
                  //               ),
                  //               Text(":"),
                  //               SizedBox(
                  //                 width: 10,
                  //               ),
                  //               Text("mar/3/2024")
                  //             ],
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Row(
                  //             children: [
                  //               Text("Chech out",
                  //                   style:
                  //                       TextStyle(fontWeight: FontWeight.bold)),
                  //               SizedBox(
                  //                 width: MediaQuery.of(context).size.height / 16,
                  //               ),
                  //               Text(":"),
                  //               SizedBox(
                  //                 width: 10,
                  //               ),
                  //               Text("nnnn")
                  //             ],
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Row(
                  //             children: [
                  //               Text("Room ",
                  //                   style:
                  //                       TextStyle(fontWeight: FontWeight.bold)),
                  //               SizedBox(
                  //                 width: MediaQuery.of(context).size.height / 11,
                  //               ),
                  //               Text(":")
                  //             ],
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: const Color.fromARGB(255, 222, 210, 210),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "why book this ?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Rated high for cleanlines",
                          style: TextStyle(fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 230, 218, 218),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.currency_rupee_rounded,
                          size: 16,
                        ),
                        Text(widget.price.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.currency_rupee_rounded,
                          size: 10,
                        ),
                        Text("2,499",
                            style: TextStyle(fontWeight: FontWeight.w200)),
                        SizedBox(
                          width: 10,
                        ),
                        // Container(
                        //   height: MediaQuery.of(context).size.height / 24,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(18),
                        //       color: Colors.black),
                        //   child: Center(
                        //       child: Text(
                        //     "Book now and pay",
                        //     style: TextStyle(color: Colors.white),
                        //   )),
                        // )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: const Color.fromARGB(255, 214, 197, 197),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "About this hostel",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "oyo 19088 better is a budget hostel with standardised amenities at the  best value.our hostel is located in  kochi"),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: const Color.fromARGB(255, 222, 212, 212),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Ratings and reviews",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [Text("Ratings & reviews")],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 5),
                    child: Row(
                      children: [
                        Text("Top reviews from India"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 3,
                          color: Colors.orange,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: 3,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(Icons.star, color: Colors.grey),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 7,
                          height: 3,
                          color: Colors.orange,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 3,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(Icons.star, color: Colors.grey),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: 3,
                          color: Colors.orange,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 3,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(Icons.star, color: Colors.grey),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 7,
                          height: 3,
                          color: Colors.orange,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 3,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(Icons.star, color: Colors.grey),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 7,
                          height: 3,
                          color: Colors.orange,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 3,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Akshay",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.7,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 35,
                          width: MediaQuery.of(context).size.width / 12.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.black),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 15,
                              ),
                              Text(
                                "4.1",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Nice atmosphere, tasty food, nearby bus stop with neat and hygienic rooms. So I am happy to stay with Good Stay Hostel."),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Similar",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.2,
                    width: double.infinity,
                    child: Container(
                      child: CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Color.fromARGB(255, 236, 229, 229)),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    width: double.infinity,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/hostelroom1.jpg"),
                                            fit: BoxFit.fill)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    26,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.red),
                                                child: Center(
                                                    child: Text("70% off")),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.6,
                                              ),
                                              CircleAvatar(
                                                radius: 13,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                    Icons.favorite_outline_sharp),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star, size: 18),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("4.1"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("(999)")
                                    ],
                                  ),
                                  Row(
                                    children: [Text("Kaloor Hostel")],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("kaloor")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 10,
                                      ),
                                      Text("4500"),
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 10,
                                      ),
                                      Text("5000",style: TextStyle(fontWeight: FontWeight.w200))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Color.fromARGB(255, 230, 223, 223)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    width: double.infinity,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/hostelroom2.jpg"),
                                            fit: BoxFit.fill)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    26,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.red),
                                                child: Center(
                                                    child: Text("70% off")),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.6,
                                              ),
                                              CircleAvatar(
                                                radius: 13,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                    Icons.favorite_outline_sharp),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star, size: 18),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("4.2"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("(999)")
                                    ],
                                  ),
                                  Row(
                                    children: [Text("Boys Hostel")],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("palarivattom")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 10,
                                      ),
                                      Text("5000"),
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 10,
                                      ),
                                      Text("5500",style: TextStyle(fontWeight: FontWeight.w200))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: const Color.fromARGB(
                                          255, 219, 213, 213)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    width: double.infinity,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/hostelroom3.jpeg"),
                                            fit: BoxFit.fill)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    26,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.red),
                                                child: Center(
                                                    child: Text("70% off")),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.6,
                                              ),
                                              CircleAvatar(
                                                radius: 13,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                    Icons.favorite_outline_sharp),
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
                                      Text("(999)")
                                    ],
                                  ),
                                  Row(
                                    children: [Text("Mariya hostel")],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("kaloor")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 10,
                                      ),
                                      Text("4600"),
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 10,
                                      ),
                                      Text("5000",style: TextStyle(fontWeight: FontWeight.w200))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Color.fromARGB(255, 237, 233, 233)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    width: double.infinity,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/hostelroom4.webp"),
                                            fit: BoxFit.fill)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    26,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.red),
                                                child: Center(
                                                    child: Text("70% off")),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.6,
                                              ),
                                              CircleAvatar(
                                                radius: 13,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                    Icons.favorite_outline_sharp),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star, size: 18),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("3.9"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("(999)")
                                    ],
                                  ),
                                  Row(
                                    children: [Text("South Janatha Hostel")],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("kaloor")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 10,
                                      ),
                                      Text("4500"),
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 10,
                                      ),
                                      Text("5000",style: TextStyle(fontWeight: FontWeight.w200),)
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                          options: CarouselOptions(
                              height: 500,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 20,
                              autoPlayCurve: Curves.easeInCirc,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 500),
                              viewportFraction: 1)),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: double.infinity,
                  ),
                  InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 19,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.black),
                          child: Center(
                              child: Text(
                            "Book Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),  
                          )),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => date(Selectpage: 0,),
                            ));
                      }),SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }





}