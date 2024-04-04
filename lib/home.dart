import 'package:flutter/material.dart';
import 'package:project/booking.dart';
import 'package:project/homepage.dart';
import 'package:project/profile_page.dart';
import 'package:project/reward.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selectindex = 0;
  static List<Widget> Widgetoption = [homepage(), booking(), reward(), Profile()];

  void onitemTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Widgetoption.elementAt(selectindex),
        
      ),
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home",
        backgroundColor:Color.fromARGB(255, 234, 224, 224)),

        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),
        label: "Booking",
        backgroundColor: Color.fromARGB(255, 227, 220, 220)),

        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_outlined),
        label: "Reward",
        backgroundColor:Color.fromARGB(255, 231, 221, 221)),

        BottomNavigationBarItem(icon: Icon(Icons.person_3),
        label: "Profile",
        
        backgroundColor: Color.fromARGB(255, 217, 205, 205)),

      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: selectindex,
      selectedItemColor: Colors.black,
      iconSize: 25,
      onTap: onitemTapped,
      elevation: 3,
      unselectedItemColor: Color.fromARGB(255, 129, 123, 123),
      showUnselectedLabels: true,
      
      ),
    );
  }
}
