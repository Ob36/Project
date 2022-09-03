import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';
import 'package:urban_home/widget/column_builder.dart';

class SelectAddress extends StatefulWidget {
  @override
  _SelectAddressState createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  String selectedAddress = '120, Yogi Villa, Opera Street, New York.';

  final addressList = [
    {'address': '120, Yogi Villa, Opera Street, New York.', 'type': 'home'},
    {'address': 'G-12, Abc Mart, Opera Street, New York.', 'type': 'work'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: whiteColor,
        title: Text(
          'Select address',
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
                type: PageTransitionType.bottomToTop,
                child: BookingSuccess(),
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
          ColumnBuilder(
            itemCount: addressList.length,
            itemBuilder: (context, index) {
              final item = addressList[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(
                    fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedAddress = item['address'];
                    });
                  },
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    padding: EdgeInsets.all(fixPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: whiteColor,
                      border: Border.all(
                        width: 1.0,
                        color: (item['address'] == selectedAddress)
                            ? primaryColor
                            : Colors.transparent,
                      ),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: (item['address'] == selectedAddress)
                                ? primaryColor
                                : greyColor.withOpacity(0.5),
                          ),
                          child: Icon(
                              (item['type'] == 'home')
                                  ? Icons.home
                                  : (item['type'] == 'work')
                                      ? Icons.work
                                      : Icons.language,
                              color: (item['address'] == selectedAddress)
                                  ? whiteColor
                                  : primaryColor),
                        ),
                        widthSpace,
                        Expanded(
                          child: Text(
                            item['address'],
                            style: black14MediumTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.all(fixPadding * 2.0),
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              onTap: () {},
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(10.0),
                strokeWidth: 1.2,
                color: blackColor,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(fixPadding),
                    color: whiteColor,
                    alignment: Alignment.center,
                    child: Text(
                      'Add new address',
                      style: black16BoldTextStyle,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
