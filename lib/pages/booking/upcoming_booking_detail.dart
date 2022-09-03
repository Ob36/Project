import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class UpcomingBooking extends StatefulWidget {
  @override
  _UpcomingBookingState createState() => _UpcomingBookingState();
}

class _UpcomingBookingState extends State<UpcomingBooking> {
  cancelBookingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        double width = MediaQuery.of(context).size.width;
        return Dialog(
          elevation: 0.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Wrap(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(fixPadding * 2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You sure cancel this booking?',
                      style: black16BoldTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    heightSpace,
                    heightSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: (width - fixPadding * 14.0) / 2,
                            padding: EdgeInsets.symmetric(vertical: fixPadding),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 1.0,
                                color: primaryColor,
                              ),
                              color: whiteColor,
                            ),
                            child: Text(
                              'Cancel',
                              style: black14MediumTextStyle,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomBar(
                                  index: 2,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: (width - fixPadding * 14.0) / 2,
                            padding: EdgeInsets.symmetric(vertical: fixPadding),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: primaryColor,
                            ),
                            child: Text(
                              'Yes',
                              style: white14MediumTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
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
          'Booking ID 2097',
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
          onTap: () => cancelBookingDialog(),
          child: Container(
            width: double.infinity,
            height: 50.0,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Cancel booking',
              style: white18BoldTextStyle,
            ),
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          providerDetailCard(),
          bookingStatus(),
          height20Space,
        ],
      ),
    );
  }

  providerDetailCard() {
    return Padding(
      padding: EdgeInsets.all(fixPadding * 2.0),
      child: Container(
        padding: EdgeInsets.all(fixPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 1.0,
              color: blackColor.withOpacity(0.25),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/provider/provider_7.jpg',
                width: 84.0,
                height: 84.0,
                fit: BoxFit.cover,
              ),
            ),
            widthSpace,
            Container(
              height: 84.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amara Smith',
                    style: black16BoldTextStyle,
                  ),
                  Text(
                    'Cleaner',
                    style: grey14MediumTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: primaryColor,
                        size: 18.0,
                      ),
                      width5Space,
                      Text(
                        'Call now',
                        style: primaryColor16MediumTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bookingStatus() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Booking Status',
            style: black16BoldTextStyle,
          ),
          heightSpace,
          bookingStatusItem(
              true, 'Booking request sent', 'Requested on 15 March, 07:00 PM'),
          primaryColorDottedLine(),
          bookingStatusItem(true, 'Booking confirmed',
              'Booking confirmed on 16 March, 09:00 AM'),
          greyColorDottedLine(),
          bookingStatusItem(
              false, 'Job started', 'Schedule on 17 March, 10:00 AM'),
          greyColorDottedLine(),
          bookingStatusItem(false, 'Job Completed', 'Average time 02:00 hours'),
        ],
      ),
    );
  }

  bookingStatusItem(check, title, subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 21.0,
          height: 21.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.5),
            border: Border.all(
                width: 1.0, color: (check) ? primaryColor : greyColor),
            color: (check) ? primaryColor : scaffoldBgColor,
          ),
          child: Icon(
            Icons.check,
            size: 16.0,
            color: (check) ? whiteColor : Colors.transparent,
          ),
        ),
        widthSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: black14MediumTextStyle,
            ),
            Text(
              subtitle,
              style: grey12MediumTextStyle,
            ),
          ],
        ),
      ],
    );
  }

  primaryColorDottedLine() {
    return Padding(
      padding: EdgeInsets.only(left: 9.5),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 40.0,
        lineThickness: 2.0,
        dashLength: 2.0,
        dashColor: primaryColor,
        dashRadius: 10.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }

  greyColorDottedLine() {
    return Padding(
      padding: EdgeInsets.only(left: 9.5),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 40.0,
        lineThickness: 2.0,
        dashLength: 2.0,
        dashColor: greyColor,
        dashRadius: 10.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}
