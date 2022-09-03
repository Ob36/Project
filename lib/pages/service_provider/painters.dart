import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class paintersList extends StatefulWidget {
  @override
  _paintersListState createState() => _paintersListState();
}

class _paintersListState extends State<paintersList> {
  String selectedSortBy = 'Job Completed';

  final carpentersList = [
    {
      'name': 'Kofi Clement',
      'image': 'assets/painters/painter1.jpeg',
      'service': 'painters',
      'jobs': '158',
      'rate': '10',
      'rating': '4.5',
      'heroTag': 'provider_1'
    },
    {
      'name': 'Kwaku George',
      'image': 'assets/painters/painter2.jpeg',
      'service': 'painters',
      'jobs': '297',
      'rate': '17',
      'rating': '4.9',
      'heroTag': 'provider_2'
    },
    {
      'name': 'Kwabena Asabeng',
      'image': 'assets/painters/painter3.jpeg',
      'service': 'painter',
      'jobs': '199',
      'rate': '16',
      'rating': '4.5',
      'heroTag': 'provider_3'
    },
    {
      'name': 'Michael Tedu',
      'image': 'assets/painters/painter4.jpeg',
      'service': 'painter',
      'jobs': '150',
      'rate': '13',
      'rating': '4.2',
      'heroTag': 'provider_4'
    },
    {
      'name': 'Edem Maxwell',
      'image': 'assets/painters/painter5.jpeg',
      'service': 'painter',
      'jobs': '259',
      'rate': '19',
      'rating': '5.0',
      'heroTag': 'provider_5'
    },
    {
      'name': 'Sedem Komla',
      'image': 'assets/painters/painter6.jpeg',
      'service': 'Plumber',
      'jobs': '139',
      'rate': '17',
      'rating': '4.8',
      'heroTag': 'provider_6'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: scaffoldBgColor,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 1.0,
        automaticallyImplyLeading: false,
        titleSpacing: 0.0,
        centerTitle: true,
        title: Text(
          'Full Home Cleaning',
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
        itemCount: carpentersList.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = carpentersList[index];
          return Padding(
            padding: (index != carpentersList.length - 1)
                ? const EdgeInsets.fromLTRB(
                    fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0)
                : EdgeInsets.all(fixPadding * 2.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 600),
                    type: PageTransitionType.fade,
                    child: ServiceProvider(
                      heroTag: item['heroTag'],
                      image: item['image'],
                    ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Hero(
                        tag: item['heroTag'],
                        child: Image.asset(
                          item['image'],
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                    ),
                    widthSpace,
                    Container(
                      height: 100.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name'],
                                  style: black14RegularTextStyle,
                                ),
                                height5Space,
                                Text(
                                  item['service'],
                                  style: grey12BoldTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width - fixPadding * 7.0 - 100.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Jobs',
                                      style: grey12BoldTextStyle,
                                    ),
                                    height5Space,
                                    Text(
                                      item['jobs'],
                                      style: black14BoldTextStyle,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rate',
                                      style: grey12BoldTextStyle,
                                    ),
                                    height5Space,
                                    Text(
                                      '\$${item['jobs']}/hr',
                                      style: black14BoldTextStyle,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rating',
                                      style: grey12BoldTextStyle,
                                    ),
                                    height5Space,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star_rate,
                                          size: 20.0,
                                          color: orangeColor,
                                        ),
                                        Text(
                                          item['rating'],
                                          style: black14BoldTextStyle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
