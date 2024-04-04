import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/select_page.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Booking",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
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
                      child: Text(
                        ".com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      height: 5,
                    ),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color.fromARGB(255, 240, 235, 235)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.orange,
                          ),
                          Text("Kochi"),
                          Text(",Kerala"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: Row(
                  children: [
                    Text(
                      "Hello ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Akash !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.back_hand,
                      color: Colors.orange,
                      size: 16,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Let's find the best hostels",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("around the worlds",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30))
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: InkWell(
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 234, 225, 225)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.search_rounded),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Kochi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => selectpage(),
                          ));
                    },
                  )),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 2,
                color: const Color.fromARGB(255, 222, 218, 218),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Offers",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 6,
                                width: double.infinity,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/hostelroom1.jpg"),
                                        fit: BoxFit.fill,)),
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
                                            child:
                                                Center(child: Text("70% off")),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.6,
                                          ),
                                          CircleAvatar(
                                            radius: 16,
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
                                  Text("4.5"),
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
                                  Text("Location")
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("399"),
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("2999")
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
                                height: MediaQuery.of(context).size.height / 6,
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
                                            child:
                                                Center(child: Text("70% off")),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.6,
                                          ),
                                          CircleAvatar(
                                            radius: 16,
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
                                  Text("4.5"),
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
                                  Text("Location")
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("399"),
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("2999")
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
                                  color:
                                      const Color.fromARGB(255, 219, 213, 213)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 6,
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
                                            child:
                                                Center(child: Text("70% off")),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.6,
                                          ),
                                          CircleAvatar(
                                            radius: 16,
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
                                  Text("Location")
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("399"),
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("2999")
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
                                height: MediaQuery.of(context).size.height / 6,
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
                                            child:
                                                Center(child: Text("70% off")),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.6,
                                          ),
                                          CircleAvatar(
                                            radius: 16,
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
                                  Text("4.5"),
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
                                  Text("Location")
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("399"),
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("2999")
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/homepage70.png"),
                          fit: BoxFit.fill)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 6,
                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/room1.jpg"),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Hostel",style: TextStyle(fontSize: 27,color: Colors.amber),),
                          ],
                        ),Row(
                          children: [
                            Text("Up to 60% OFF",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                          ],
                        ),
                        Row(
                                  children: [
                                    Text(
                    " On  Booking",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                                    ),
                                    Container(
                    height: 20,
                    width: 40,
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
                                Row(
                                  children: [
                                    Container(height: MediaQuery.of(context).size.height/33,width: MediaQuery.of(context).size.height/13,color: Colors.black,child: Text("Book now"),),
                                  ],
                                )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
