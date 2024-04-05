import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/room.dart';
import 'package:project/tapbar_select.dart';
import 'package:table_calendar/table_calendar.dart';

class check_out extends StatefulWidget {
  const check_out({super.key});

  @override
  State<check_out> createState() => _check_outState();
}

class _check_outState extends State<check_out> {
   bool _first= true;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();
  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 225, 214, 214),
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Chech in",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: MediaQuery.of(context).size.height / 14,
                            ),
                            Text(":"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("mar/3/2024")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Chech out",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: MediaQuery.of(context).size.height / 16,
                            ),
                            Text(":"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("nnnn")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Room ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: MediaQuery.of(context).size.height / 11,
                            ),
                            Text(":")
                          ],
                        ),
                      )
                    ],
                  ),
                ),SizedBox(height: 10,),
              
                Container(
                  height: 500,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 51, 48, 48))),
                  child: TableCalendar(
                    focusedDay: selectedDay,
                    firstDay: DateTime(1990),
                    lastDay: DateTime(2050),
            
                    //changing calendar format
                    calendarFormat: format,
                    onFormatChanged: (CalendarFormat _format) {
                      setState(() {
                        format = _format;
                      });
                    },
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    daysOfWeekVisible: true,
                    daysOfWeekHeight: 40,
            
                    //Day Changed on select
                    onDaySelected: (DateTime selectDay, DateTime focusDay) {
                      setState(() {
                        selectedDay = selectDay;
                        focusedDay = focusDay;
                          _first = !_first;
                      });
                      print(focusedDay);
                    },
                    selectedDayPredicate: (DateTime date) {
                      return isSameDay(selectedDay, date);
                    },
            
                    //To style the Calendar
                    calendarStyle: CalendarStyle(
                      isTodayHighlighted: true,
                      selectedDecoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      selectedTextStyle: TextStyle(color: Colors.white),
                      todayDecoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      defaultDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      weekendDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: true,
                      titleCentered: true,
                      formatButtonShowsNext: false,
                      formatButtonDecoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      formatButtonTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),SizedBox(height: 10,),
        
                GestureDetector(
                    child: AnimatedPhysicalModel(duration: Duration(seconds: 1),
                    color: !_first? Colors.white:Colors.black,
                    elevation: 0,
                    shape: BoxShape.rectangle,
                    shadowColor: Colors.black,
                     borderRadius: BorderRadius.circular(18),
                      child: Container(
                                        height: MediaQuery.of(context).size.height / 16,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        ),
                                        child: Center(
                        child: Text(
                      "Apply",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                                        )),
                                      ),
                    ),onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => date(Selectpage: 2,),));}
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
