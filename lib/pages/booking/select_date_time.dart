import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

const labelMonth = 'Month';
const labelDate = 'Date';
const labelWeekDay = 'Week Day';

class SelectDateTime extends StatefulWidget {
  @override
  _SelectDateTimeState createState() => _SelectDateTimeState();
}

class _SelectDateTimeState extends State<SelectDateTime> {
  DateTime _selectedDate;
  String selectedTime = '';

  final slotList = [
    {'time': '08:00 AM'},
    {'time': '09:00 AM'},
    {'time': '10:00 AM'},
    {'time': '11:00 AM'},
    {'time': '12:00 PM'},
    {'time': '01:00 PM'},
    {'time': '02:00 PM'},
    {'time': '03:00 PM'},
    {'time': '04:00 PM'}
  ];

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: whiteColor,
        title: Text(
          'Select date & time',
          style: appBarTextStyle,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: SelectAddress(),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: 50.0,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Continue',
              style: white18BoldTextStyle,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          horizontalDatePicker(),
          heightSpace,
          Container(
            margin: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
            height: 1.0,
            width: double.infinity,
            color: greyColor.withOpacity(0.4),
          ),
          slots(),
        ],
      ),
    );
  }

  horizontalDatePicker() {
    return CalendarTimeline(
      showYears: false,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
      onDateSelected: (date) {
        setState(() {
          _selectedDate = date;
        });
      },
      leftMargin: 20,
      monthColor: primaryColor,
      dayColor: Colors.teal[500],
      dayNameColor: whiteColor.withOpacity(0.85),
      activeDayColor: whiteColor,
      activeBackgroundDayColor: primaryColor,
      dotsColor: whiteColor.withOpacity(0.85),
      locale: 'en',
    );
  }

  slots() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(fixPadding * 2.0),
          child: Text(
            '9 Slots',
            style: black18BoldTextStyle,
          ),
        ),
        Wrap(
          children: slotList
              .map(
                (e) => Padding(
                  padding: EdgeInsets.only(
                      left: fixPadding * 2.0, bottom: fixPadding * 2.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedTime = e['time'];
                      });
                    },
                    child: Container(
                      width: 90.0,
                      padding: EdgeInsets.all(fixPadding),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(width: 0.7, color: greyColor),
                        color: (e['time'] == selectedTime)
                            ? primaryColor
                            : whiteColor,
                      ),
                      child: Text(e['time'],
                          style: (e['time'] == selectedTime)
                              ? white14MediumTextStyle
                              : primaryColor14MediumTextStyle),
                    ),
                  ),
                ),
              )
              .toList()
              .cast<Widget>(),
        ),
      ],
    );
  }
}
