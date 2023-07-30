import 'package:endUser_version/screens/select_timmings_page/select_timmings_page.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDoctorPage extends StatefulWidget {
  @override
  _SelectDoctorPageState createState() => _SelectDoctorPageState();
}

class _SelectDoctorPageState extends State<SelectDoctorPage> {
  var doctorsData = {
    'name': [
      '',
      'abhinav',
      'aditya',
      'ankesh',
      'akhilesh',
      'ankit',
    ],
    'specialistType': [
      '',
      'Cardiologist',
      'Orthopaedic',
      'Nuerosurgeon',
      'Paediatrician',
      'Radiologist',
    ]
  };
  var selectedName = '';
  /////////////////////////
  Widget showSpecialistType = Container();
  /////////////////////////

  Widget showCalendar = Container();
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
        color: Colors.blue[50],
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              doctorName(),
              showSpecialistType,
              showCalendar,
            ],
          ),
        ),
      ),
    );
  }

  Container doctorName() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[100],
      ),
      child: Row(
        textBaseline: TextBaseline.ideographic,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text(
            'Select Doctor : ',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          DropdownButton(
            value: selectedName,
            items: doctorsData['name'].map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              );
            }).toList(),
            icon: Icon(
              Icons.arrow_drop_down,
              size: 40,
            ),
            dropdownColor: Colors.blue[50],
            onChanged: (String newSelectedValue) {
              setState(() {
                selectedName = newSelectedValue;
                if (newSelectedValue != '') {
                  showSpecialistType = showDoctorSpecialityTypeCard(
                      doctorsData['name'].indexOf(newSelectedValue));
                  showCalendar = userCustomiedCalendar();
                } else {
                  showSpecialistType = Container();
                  showCalendar = Container();
                }
              });
            },
          ),
        ],
      ),
    );
  }

  Container showDoctorSpecialityTypeCard(int indexValue) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 10,
        bottom: 20,
        right: 20,
      ),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[100],
      ),
      child: Row(
        textBaseline: TextBaseline.ideographic,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text(
            'Specialist Type : ',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            doctorsData['specialistType'][indexValue],
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }

  Card userCustomiedCalendar() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(bottom: 10, top: 20),
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
                fontSize: 18,
              ),
            ),
          ),
          todayDayBuilder: (context, date, lst) => Container(
            alignment: Alignment.center,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          selectedDayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.teal,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              date.day.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          weekendDayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
            ),
          ),
          outsideDayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
          outsideWeekendDayBuilder: (context, date, events) => Container(
            alignment: Alignment.center,
            child: Text(
              date.day.toString(),
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
          dowWeekdayBuilder: (context, weekday) => Container(
            alignment: Alignment.center,
            child: Text(
              weekday,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ),
            ),
          ),
          dowWeekendBuilder: (context, weekday) => Container(
            alignment: Alignment.center,
            child: Text(
              weekday,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: Colors.red,
              ),
            ),
          ),
        ),
        onDaySelected: (day, events, holidays) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SelectTimmingsPage(),
            ),
          );
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'BHU Hospitals',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.teal,
    );
  }
}
