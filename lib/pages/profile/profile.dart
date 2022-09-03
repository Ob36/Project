import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  logoutDialog() {
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
                      'You sure want to logout?',
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
                                builder: (context) => Login(),
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
                              'Logout',
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
          'Profile',
          style: appBarTextStyle,
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          aboutUser(),
          height20Space,
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: Favorite(),
                ),
              );
            },
            child: settingTile('Favorite'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: Notifications(),
                ),
              );
            },
            child: settingTile('Notifications'),
          ),
          about(),
          app(),
          InkWell(
            onTap: () => logoutDialog(),
            child: Padding(
              padding: const EdgeInsets.all(fixPadding * 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.exit_to_app,
                    size: 22.0,
                    color: redColor,
                  ),
                  widthSpace,
                  Text(
                    'Logout',
                    style: red14MediumTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  aboutUser() {
    return Padding(
      padding: const EdgeInsets.all(fixPadding * 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35.0),
                child: Image.asset(
                  'assets/user/user_5.jpg',
                  width: 70.0,
                  height: 70.0,
                ),
              ),
              widthSpace,
              Text(
                'Stella French',
                style: black16BoldTextStyle,
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: EditProfile(),
                ),
              );
            },
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 40.0,
              height: 40.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: primaryColor,
              ),
              child: Icon(
                Icons.edit,
                size: 24.0,
                color: whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  about() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height20Space,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Text(
            'About'.toUpperCase(),
            style: black12RegularTextStyle,
          ),
        ),
        heightSpace,
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: PrivacyPolicy(),
              ),
            );
          },
          child: settingTile('Privacy Policy'),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: TermsOfUse(),
              ),
            );
          },
          child: settingTile('Terms of use'),
        ),
      ],
    );
  }

  app() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height20Space,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Text(
            'App'.toUpperCase(),
            style: black12RegularTextStyle,
          ),
        ),
        heightSpace,
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: Support(),
              ),
            );
          },
          child: settingTile('Support'),
        ),
        InkWell(
          onTap: () {},
          child: settingTile('Report a Bug'),
        ),
        InkWell(
          onTap: () {},
          child: settingTile('App Version 1.0'),
        ),
      ],
    );
  }

  settingTile(title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          fixPadding * 2.0, fixPadding, fixPadding * 2.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: black14MediumTextStyle,
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 16.0,
                color: blackColor,
              ),
            ],
          ),
          heightSpace,
          Container(
            width: double.infinity,
            height: 1.0,
            color: greyColor,
          ),
        ],
      ),
    );
  }
}
