import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class check_in extends StatefulWidget {
  const check_in({super.key});

  @override
  State<check_in> createState() => _check_inState();
}

class _check_inState extends State<check_in> {
  DateTime selectedDate = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "${selectedDate.day} - ${selectedDate.month} - ${selectedDate.year} "),
              ElevatedButton(
                  onPressed: () async {
                    final DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2030));
                        if (dateTime !=null){
                          setState(() {
                            selectedDate= dateTime;
                          });
                        }
                  },
                  child: Text("choose date")),
                  
            ],
          ),
        ),
      ),
    );
  }
}
