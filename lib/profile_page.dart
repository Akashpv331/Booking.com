import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:project/logout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String user = "";
  String pho = "";

  var result = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load();
  }

  Future<void> load() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      user = pref.getString("name1") ?? "name";
      pho = pref.getString("phone") ?? "phone";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(221, 234, 220, 220))),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromARGB(212, 201, 202, 195),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  title:
                      Text(user, style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(pho),
                  trailing: Icon(Icons.arrow_forward_ios),
                )),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Text(
                "Feedback",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color.fromARGB(255, 239, 232, 232),
            ),
            ListTile(
              leading:
                  Text("Privacy and policy", style: TextStyle(fontSize: 15)),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color.fromARGB(255, 239, 232, 232),
            ),
            ListTile(
              leading:
                  Text("Terms and conditions", style: TextStyle(fontSize: 15)),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color.fromARGB(255, 239, 232, 232),
            ),
            ListTile(
              leading: Text("Help", style: TextStyle(fontSize: 15)),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color.fromARGB(255, 239, 232, 232),
            ),
            ListTile(
              leading: Text("About", style: TextStyle(fontSize: 15)),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color.fromARGB(255, 239, 232, 232),
            ),
            ListTile(
              leading: Text(" Change Language", style: TextStyle(fontSize: 15)),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color.fromARGB(255, 239, 232, 232),
            ),
            ListTile(
              leading: Text(" Contact us", style: TextStyle(fontSize: 15)),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color.fromARGB(255, 239, 232, 232),
            ),
            InkWell(
                child: ListTile(
              leading: Text(" Logout", style: TextStyle(fontSize: 15)),
              trailing: Icon(Icons.logout),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => logout(),
                    ));
              },
            )),
            Container(
              width: double.infinity,
              height: 2,
              color: const Color.fromARGB(255, 239, 232, 232),
            ),
          ]),
        ),
      ),
    );
  }
}
