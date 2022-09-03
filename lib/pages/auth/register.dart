import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              Text(
                'Register your account',
                style: grey14BoldTextStyle,
              ),
              height20Space,
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: blackColor.withOpacity(0.25),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20.0),
                      hintText: 'Username',
                      hintStyle: black14MediumTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              height20Space,
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: blackColor.withOpacity(0.25),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20.0),
                      hintText: 'Email',
                      hintStyle: black14MediumTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              height20Space,
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: blackColor.withOpacity(0.25),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20.0),
                      hintText: 'Password',
                      hintStyle: black14MediumTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              height20Space,
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        color: blackColor.withOpacity(0.25),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20.0),
                      hintText: 'Confirm Password',
                      hintStyle: black14MediumTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              height20Space,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: OTPScreen(),
                      ),
                    );
                  },
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
