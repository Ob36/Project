import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class BottomBar extends StatefulWidget {
  final int index;

  const BottomBar({Key key, this.index}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  DateTime currentBackPressTime;
  int currentIndex;
  @override
  void initState() {
    super.initState();

    if (widget.index != null) {
      setState(() {
        currentIndex = widget.index;
      });
    } else {
      setState(() {
        currentIndex = 1;
      });
    }
  }

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: Container(
          width: double.infinity,
          color: whiteColor,
          padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              bottomBarItem(Icons.home, 1),
              bottomBarItem(Icons.date_range, 2),
              bottomBarItem(Icons.chat, 3),
              bottomBarItem(Icons.account_balance_wallet, 4),
              bottomBarItem(Icons.person, 5),
            ],
          ),
        ),
      ),
      body: WillPopScope(
        child: (currentIndex == 1)
            ? HomePage()
            : (currentIndex == 2)
                ? MyBooking()
                : (currentIndex == 3)
                    ? ChatList()
                    : (currentIndex == 4)
                        ? UrbanHomeCash()
                        : Profile(),
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: whiteColor,
      );
      return false;
    } else {
      return true;
    }
  }

  bottomBarItem(icon, index) {
    return IconButton(
      icon: Icon(
        icon,
        size: 24.0,
        color: (index == currentIndex) ? primaryColor : greyColor,
      ),
      onPressed: () => changeIndex(index),
    );
  }
}
