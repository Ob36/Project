import 'package:flutter/material.dart';
import 'package:urban_home/constant/constant.dart';

class Support extends StatefulWidget {
  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: whiteColor,
        title: Text(
          'Support',
          style: black18BoldTextStyle,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          heightSpace,
          heightSpace,
          // Name textfield start
          Theme(
            data: Theme.of(context).copyWith(
              primaryColor: primaryColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
              child: TextField(
                style: black16MediumTextStyle,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: grey16MediumTextStyle,
                  fillColor: scaffoldBgColor,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: primaryColor, width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey[400], width: 1.5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey[400], width: 1.5),
                  ),
                ),
              ),
            ),
          ),
          // Name textfield end

          heightSpace,
          heightSpace,
          // Email Address textfield start
          Theme(
            data: Theme.of(context).copyWith(
              primaryColor: primaryColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
              child: TextField(
                style: black16MediumTextStyle,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email address",
                  hintStyle: grey16MediumTextStyle,
                  fillColor: scaffoldBgColor,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: primaryColor, width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey[400], width: 1.5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey[400], width: 1.5),
                  ),
                ),
              ),
            ),
          ),
          // Email Address textfield end

          heightSpace,
          heightSpace,

          // Write here textfield start
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              style: black16MediumTextStyle,
              decoration: InputDecoration(
                hintText: "Write here",
                hintStyle: grey16MediumTextStyle,
                fillColor: scaffoldBgColor,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: primaryColor, width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey[400], width: 1.5),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey[400], width: 1.5),
                ),
              ),
            ),
          ),
          // Write here textfield end

          SizedBox(height: 30.0),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(20.0),
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(fixPadding * 1.0),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: primaryColor),
                child: Text(
                  'Submit',
                  style: white14BoldTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
