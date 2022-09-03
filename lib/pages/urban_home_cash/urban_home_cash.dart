import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:urban_home/constant/constant.dart';

class UrbanHomeCash extends StatefulWidget {
  @override
  _UrbanHomeCashState createState() => _UrbanHomeCashState();
}

class _UrbanHomeCashState extends State<UrbanHomeCash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: whiteColor,
        title: Text(
          'UrbanHome Cash',
          style: appBarTextStyle,
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          moneySection(),
          aboutOffer(),
          referralCodeSection(),
        ],
      ),
    );
  }

  moneySection() {
    return Container(
      width: double.infinity,
      height: 150.0,
      color: const Color(0xFF100495),
      child: Stack(
        children: [
          Positioned(
            top: fixPadding * 2.0,
            left: fixPadding * 2.0,
            child: Text(
              '\$15',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFFFF00),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Image.asset(
              'assets/coin.png',
              height: 125.0,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }

  aboutOffer() {
    return Padding(
      padding: EdgeInsets.all(fixPadding * 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Share code & save at least 25%',
            style: black16BoldTextStyle,
          ),
          heightSpace,
          Text(
            'Your friend gets \$5 UrbanHome cash on sign up. You get \$5 when they complete a booking of \$15 or more within 21 days. You can earn upto \$20 UrbanHome Cash.',
            style: grey14MediumTextStyle,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  referralCodeSection() {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(fixPadding * 2.0),
      color: greyColor.withOpacity(0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Your referral code',
            style: black14MediumTextStyle,
          ),
          heightSpace,
          Container(
            width: 170.0,
            padding: EdgeInsets.all(fixPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: whiteColor,
              border: Border.all(
                width: 1.0,
                color: greyColor,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'UBCC015',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: orangeColor,
                  ),
                ),
                Icon(
                  Icons.content_copy,
                  size: 20.0,
                  color: orangeColor,
                ),
              ],
            ),
          ),
          height20Space,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  width: (width - fixPadding * 6.0) / 2.0,
                  padding: EdgeInsets.all(fixPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFF2AB640),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Whatsapp',
                        style: white14MediumTextStyle,
                      ),
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 24.0,
                        color: whiteColor,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  width: (width - fixPadding * 6.0) / 2.0,
                  padding: EdgeInsets.all(fixPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: whiteColor,
                    border: Border.all(width: 1.0, color: greyColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'More options',
                        style: black14MediumTextStyle,
                      ),
                      Icon(
                        Icons.share,
                        size: 24.0,
                        color: blackColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
