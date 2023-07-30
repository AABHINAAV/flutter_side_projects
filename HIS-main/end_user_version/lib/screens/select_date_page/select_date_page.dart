import 'package:endUser_version/screens/select_timmings_page/select_timmings_page.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDatePage extends StatefulWidget {
  @override
  _SelectDatePageState createState() => _SelectDatePageState();
}

class _SelectDatePageState extends State<SelectDatePage> {
  
  CalendarController _controller;

  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue[50],
        padding: EdgeInsets.all(10),
        child: userCustomiedCalendar(),
      ),
    );
  }

  Card userCustomiedCalendar() {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: TableCalendar(
        calendarController: _controller,
        initialCalendarFormat: CalendarFormat.month,
        headerStyle: HeaderStyle(
          centerHeaderTitle: true,
          formatButtonVisible: false,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            letterSpacing: 1,
          ),
        ),
        builders: CalendarBuilders(
          dayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          todayDayBuilder: (context, date, lst) => Container(
            alignment: Alignment.center,
            child: Text(date.day.toString()),
          ),
          selectedDayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          weekendDayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                color: Colors.red,
                fontSize: 17,
              ),
            ),
          ),
          outsideDayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
          ),
          outsideWeekendDayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
          ),
          dowWeekdayBuilder: (context, weekday) => Container(
            alignment: Alignment.center,
            child: Text(
              weekday,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
          dowWeekendBuilder: (context, weekday) => Container(
            alignment: Alignment.center,
            child: Text(
              weekday,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.red,
              ),
            ),
          ),
        ),
        onDaySelected: (day, events, holidays) {
          setState(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SelectTimmingsPage()));
          });
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Select Date',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.teal,
    );
  }
}
