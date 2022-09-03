import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  var firstController = TextEditingController();
  var secondController = TextEditingController();
  var thirdController = TextEditingController();
  var fourthController = TextEditingController();
  FocusNode secondFocusNode = FocusNode();
  FocusNode thirdFocusNode = FocusNode();
  FocusNode fourthFocusNode = FocusNode();

  loadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return Dialog(
          elevation: 0.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Wrap(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SpinKitRing(
                      color: primaryColor,
                      size: 40.0,
                      lineWidth: 1.2,
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Please Wait..',
                      style: grey14MediumTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            PageTransition(
                duration: Duration(milliseconds: 600),
                type: PageTransitionType.fade,
                child: BottomBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back,
                  color: blackColor,
                ),
              )
            ],
          ),
          SizedBox(height: 70.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/iconss.png',
                width: 150.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 30.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                child: Text(
                  'Enter the otp code from the phone we just sent you',
                  style: grey14BoldTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50.0),
              // OTP Box Start
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // 1 Start
                    Container(
                      width: 50.0,
                      height: 50.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            color: blackColor.withOpacity(0.25),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: firstController,
                        style: black14MediumTextStyle,
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(18.0),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        onChanged: (v) {
                          FocusScope.of(context).requestFocus(secondFocusNode);
                        },
                      ),
                    ),
                    // 1 End
                    // 2 Start
                    Container(
                      width: 50.0,
                      height: 50.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            color: blackColor.withOpacity(0.25),
                          ),
                        ],
                      ),
                      child: TextField(
                        focusNode: secondFocusNode,
                        controller: secondController,
                        style: black14MediumTextStyle,
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(18.0),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        onChanged: (v) {
                          FocusScope.of(context).requestFocus(thirdFocusNode);
                        },
                      ),
                    ),
                    // 2 End
                    // 3 Start
                    Container(
                      width: 50.0,
                      height: 50.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            color: blackColor.withOpacity(0.25),
                          ),
                        ],
                      ),
                      child: TextField(
                        focusNode: thirdFocusNode,
                        controller: thirdController,
                        style: black14MediumTextStyle,
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(18.0),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        onChanged: (v) {
                          FocusScope.of(context).requestFocus(fourthFocusNode);
                        },
                      ),
                    ),
                    // 3 End
                    // 4 Start
                    Container(
                      width: 50.0,
                      height: 50.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            color: blackColor.withOpacity(0.25),
                          ),
                        ],
                      ),
                      child: TextField(
                        focusNode: fourthFocusNode,
                        controller: fourthController,
                        style: black14MediumTextStyle,
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(18.0),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        onChanged: (v) {
                          loadingDialog();
                        },
                      ),
                    ),
                    // 4 End
                  ],
                ),
              ),
              // OTP Box End

              SizedBox(height: 30.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Didn\'t receive OTP Code!',
                      style: grey14MediumTextStyle,
                    ),
                    width5Space,
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Resend',
                        style: black18BoldTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              height20Space,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                child: InkWell(
                  onTap: () => loadingDialog(),
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primaryColor,
                    ),
                    child: Text(
                      'Continue',
                      style: white14BoldTextStyle,
                    ),
                  ),
                ),
              ),
              height20Space,
            ],
          ),
        ],
      ),
    );
  }
}
