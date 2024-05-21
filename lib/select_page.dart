

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project/Api&Url/ApiClass.dart';
import 'package:project/details_page.dart';



class selectpage extends StatefulWidget {
  const selectpage({super.key});

  @override
  State<selectpage> createState() => _selectpageState();
}

class _selectpageState extends State<selectpage> {
 
  String img="";
  String addr="";
  String  name="";
  String price="";
  String location="";
  String dec="";
  var result=[];
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hosteldetais();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
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
                  height: MediaQuery.of(context).size.height / 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Check in",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 15,
                        width: 2,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Check out",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 15,
                        width: 2,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Room", style: TextStyle(color: Colors.white))
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
              SizedBox(
                width: 10,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:result.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
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
                                    borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage(result[index]["himage"]),fit: BoxFit.cover)
                                  ),
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
                                            height: 2,
                                            
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
                                  Text("(999)"),
                                  Container(
                                    width: MediaQuery.of(context).size.width / 2,
                                  ),
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                  Text(result[index]["hloc"],style: TextStyle(fontSize: 9),)
                                ],
                              ),
                              Row(
                                children: [Text(result[index]["hname"],)],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Colors.black,
                                    size: 10,
                                  ),
                                  Text(
                                    result[index]['hprice'].toString(),
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 10,
                                  ),
                                  Text("6000",
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ),onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => details_page(name:result[index]["hname"], image: result[index]["himage"], price:result[index]["hprice"], location: result[index]["hloc"], desc: result[index]["hdesc"],),
                                    ));
                              },
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
    
  }
  void hosteldetais()async {
      final formData =
          FormData.fromMap({"haddre": addr, "hprice":price,"hloc":location,"hdesc":dec,"hname":name,"himage":img});
      result = (await ApiClass().HosteldetailApi())! as List;
   /*  print("aaaaaaaaaaaaaaaaaaaaaaaaaa0${result[0]["himage"]}");
      print("aaaaaaaaaaaaaaaaaaaaaaaaaa1${result[1]["himage"]}");
       print("aaaaaaaaaaaaaaaaaaaaaaaaaa2${result[2]["himage"]}");
        print("aaaaaaaaaaaaaaaaaaaaaaaaaa3${result[3]["himage"]}");
         print("aaaaaaaaaaaaaaaaaaaaaaaaaa4${result[4]["himage"]}");
          print("aaaaaaaaaaaaaaaaaaaaaaaaaa5${result[5]["himage"]}");
           print("aaaaaaaaaaaaaaaaaaaaaaaaaa6${result[6]["himage"]}");*/
     print("immmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
     setState(() {
    //  hosteldetais();
       
     });
  
   
     
  }
}
