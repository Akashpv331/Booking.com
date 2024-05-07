import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:project/check_out.dart';
import 'package:project/tapbar_select.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_calendar/table_calendar.dart';

class check_in extends StatefulWidget {
  const check_in({super.key});

  @override
  State<check_in> createState() => _check_inState();
}

class _check_inState extends State<check_in> {
  bool _first = true;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  var now = DateTime.now();

  TextEditingController _eventController = TextEditingController();
  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  Future<void> savedata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString("date1", DateFormat.yMMMMd().format(selectedDay));
      print(
          "iiiiiiiiiiiiiiiiiiiiiiiiiiiiiii ${DateFormat.yMMMMd().format(selectedDay)}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Calender"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(4),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //defining min an max years
                Container(
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1, color: const Color.fromRGBO(0, 0, 0, 1))),
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
                      savedata();
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
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),

                GestureDetector(
                    child: AnimatedPhysicalModel(
                      duration: Duration(seconds: 1),
                      color: !_first ? Colors.white : Colors.black,
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
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => date(Selectpage: 1),
                          ));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
