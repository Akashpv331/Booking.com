import 'package:flutter/material.dart';

class bookedpage extends StatefulWidget {
  const bookedpage({super.key});

  @override
  State<bookedpage> createState() => _bookedpageState();
}

class _bookedpageState extends State<bookedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
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
                            color: Colors.black,
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
                                "hostel",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("location"),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee_outlined,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Text("399")
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
                              children: [Text("check in",style: TextStyle(color: Colors.grey),), Text("12 jun",style: TextStyle(fontWeight: FontWeight.bold),)],
                            ),

                            Icon(Icons.arrow_circle_right_outlined,color: Colors.black54,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Text("check out",style: TextStyle(color: Colors.grey)), Text("12 jun",style: TextStyle(fontWeight: FontWeight.bold))],
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
        ),
      ),
    );
  }
}
