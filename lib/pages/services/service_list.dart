import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class ServiceList extends StatefulWidget {
  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  final serviceList = [
    {
      'title': 'Full Home Cleaning',
      'image': 'assets/service-image/full-home-cleaning.jpg'
    },
    {'title': 'Car Cleaning', 'image': 'assets/service-image/car-cleaning.jpg'},
    {
      'title': 'Bathroom Cleaning',
      'image': 'assets/service-image/bathroom-cleaning.jpg'
    },
    {
      'title': 'Kitchen Cleaning',
      'image': 'assets/service-image/kitchen-cleaning.jpg'
    },
    {
      'title': 'Carpet Cleaning',
      'image': 'assets/service-image/carpet-cleaning.jpg'
    },
    {
      'title': 'Sofa Cleaning',
      'image': 'assets/service-image/sofa-cleaning.jpg'
    },
    {
      'title': 'Home Disinfection',
      'image': 'assets/service-image/home-disinfection.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 1.0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Professional Cleaning Services',
          style: black16BoldTextStyle,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: serviceList.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = serviceList[index];
          return Padding(
            padding: (index != serviceList.length - 1)
                ? const EdgeInsets.fromLTRB(
                    fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0)
                : EdgeInsets.all(fixPadding * 2.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: ServiceProviderList(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(10.0),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        item['image'],
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    widthSpace,
                    Text(
                      item['title'],
                      style: black14BoldTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
