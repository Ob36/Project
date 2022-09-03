import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class PaintersList extends StatefulWidget {
  const PaintersList({Key key}) : super(key: key);

  @override
  State<PaintersList> createState() => _PaintersListState();
}

class _PaintersListState extends State<PaintersList> {
  @override
  Widget build(BuildContext context) {
    final paintersList = [
      {
        'name': 'Kofi Clement',
        'image': 'assets/carpenters/carpenter1.jpeg',
        'service': 'Plumber',
        'jobs': '158',
        'rate': '10',
        'rating': '4.5',
        'heroTag': 'provider_1'
      },
      {
        'name': 'Kwaku George',
        'image': 'assets/carpenters/carpenter2.jpeg',
        'service': 'Plumber',
        'jobs': '297',
        'rate': '17',
        'rating': '4.9',
        'heroTag': 'provider_2'
      },
      {
        'name': 'Kwabena Asabeng',
        'image': 'assets/carpenters/carpenter3.jpeg',
        'service': 'Plumber',
        'jobs': '199',
        'rate': '16',
        'rating': '4.5',
        'heroTag': 'provider_3'
      },
      {
        'name': 'Michael Tedu',
        'image': 'assets/carpenters/carpenter4.jpeg',
        'service': 'Plumber',
        'jobs': '150',
        'rate': '13',
        'rating': '4.2',
        'heroTag': 'provider_4'
      },
      {
        'name': 'Edem Maxwell',
        'image': 'assets/carpenters/carpenter5.jpeg',
        'service': 'Plumber',
        'jobs': '259',
        'rate': '19',
        'rating': '5.0',
        'heroTag': 'provider_5'
      },
      {
        'name': 'Sedem Komla',
        'image': 'assets/carpenters/carpenter6.jpeg',
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
            'All Carpenters',
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
          itemCount: paintersList.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final item = paintersList[index];
            return Padding(
              padding: (index != paintersList.length - 1)
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
}
