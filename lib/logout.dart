import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/login.dart';
import 'package:project/profile_page.dart';

class logout extends StatelessWidget {
  const logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Container(
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black26),
              color: Colors.black),
          child: Column(
            children: [
              Text(
                "DO YOU WANT TO LOGOUT ?",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Text("YES", style: TextStyle(color: Colors.white)),
                    onTap: () {
                                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => loginpage(),maintainState: true), (route) => false);

                    },
                  ),
                  InkWell(child: Text("NO", style: TextStyle(color: Colors.white)),onTap: () {
                    
                                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Profile( ),maintainState: true), (route) => false);
                  },)
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
