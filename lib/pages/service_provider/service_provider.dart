import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';
import 'package:urban_home/widget/column_builder.dart';

class ServiceProvider extends StatefulWidget {
  final String heroTag, image;

  const ServiceProvider({Key key, @required this.heroTag, @required this.image})
      : super(key: key);
  @override
  _ServiceProviderState createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
  bool favorite = false;

  final serviceIncludeList = [
    {
      'title': 'Deep Cleaning',
      'image': 'assets/service-include/service-include-1.jpg',
      'subtitle': 'Intensive cleaning for 3-4 hours of the entire house'
    },
    {
      'title': 'Professional Equipment',
      'image': 'assets/service-include/service-include-2.jpg',
      'subtitle': 'Industrial grade machines & chemicals used'
    },
    {
      'title': 'Safe and Hygienic',
      'image': 'assets/service-include/service-include-3.jpg',
      'subtitle':
          'Professionals maintain social distancing, carry PPE kits & follow WHO guidelines on hygiene'
    }
  ];

  final reviewList = [
    {
      'name': 'John Doe',
      'image': 'assets/user/user_1.jpg',
      'review': 'Best service ever seen.',
      'rating': 5
    },
    {
      'name': 'Ellison Perry',
      'image': 'assets/user/user_3.jpg',
      'review': 'Best service ever seen.',
      'rating': 5
    },
    {
      'name': 'Amara Smith',
      'image': 'assets/user/user_4.jpg',
      'review': 'Decent work. Speed are amazing.',
      'rating': 4
    },
    {
      'name': 'David Hayden',
      'image': 'assets/user/user_7.jpg',
      'review': 'Nice experience. Book again.',
      'rating': 5
    },
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: SelectDateTime(),
              ),
            );
          },
          child: Container(
            height: 50.0,
            width: double.infinity,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Book now',
              style: white18BoldTextStyle,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 358.0,
                pinned: true,
                forceElevated: true,
                automaticallyImplyLeading: false,
                backgroundColor: whiteColor,
                elevation: 0.0,
                leading: IconButton(
                  color: whiteColor.withOpacity(0.8),
                  icon: Icon(
                    Icons.arrow_back,
                    color: blackColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      color: blackColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: ChatScreen(
                            name: 'Amara Smith',
                          ),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    color: whiteColor.withOpacity(0.8),
                    icon: Icon(
                      (favorite) ? Icons.favorite : Icons.favorite_border,
                      color: blackColor,
                    ),
                    onPressed: () {
                      setState(() {
                        favorite = !favorite;
                      });

                      if (favorite) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Added to favorite')));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Remove from favorite')));
                      }
                    },
                  ),
                ],
                centerTitle: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Hero(
                    tag: widget.heroTag,
                    child: Container(
                      width: width,
                      height: width,
                      color: whiteColor,
                      child: Container(
                        width: width,
                        height: 358.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              nameDescription(),
              jobsRateRating(),
              serviceInclude(),
              reviews(),
            ],
          ),
        ),
      ),
    );
  }

  nameDescription() {
    return Container(
      padding: EdgeInsets.all(fixPadding * 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amara Smith',
            style: black18BoldTextStyle,
          ),
          Text(
            'Cleaner',
            style: grey14MediumTextStyle,
          ),
          heightSpace,
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.',
            style: black14MediumTextStyle,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  jobsRateRating() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                '199',
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
                '\$16/hr',
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_rate,
                    size: 20.0,
                    color: orangeColor,
                  ),
                  Text(
                    '5.0',
                    style: black14BoldTextStyle,
                  ),
                  Text(
                    '(190)',
                    style: grey14MediumTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  serviceInclude() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0),
          child: Text(
            'What does this service include?',
            style: black16BoldTextStyle,
          ),
        ),
        heightSpace,
        ColumnBuilder(
          itemCount: serviceIncludeList.length,
          itemBuilder: (context, index) {
            final item = serviceIncludeList[index];
            return Container(
              padding: EdgeInsets.fromLTRB(
                  fixPadding * 2.0, fixPadding, fixPadding * 2.0, 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (index % 2 == 0)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                item['image'],
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            widthSpace,
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title'],
                                    style: black14MediumTextStyle,
                                  ),
                                  heightSpace,
                                  Text(
                                    item['subtitle'],
                                    style: black14RegularTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title'],
                                    style: black14MediumTextStyle,
                                  ),
                                  heightSpace,
                                  Text(
                                    item['subtitle'],
                                    style: black14RegularTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            widthSpace,
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                item['image'],
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
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
          },
        ),
      ],
    );
  }

  reviews() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0),
          child: Text(
            'Reviews',
            style: black16BoldTextStyle,
          ),
        ),
        ColumnBuilder(
          itemCount: reviewList.length,
          itemBuilder: (context, index) {
            final item = reviewList[index];
            return Padding(
              padding: (index != reviewList.length - 1)
                  ? const EdgeInsets.fromLTRB(
                      fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0)
                  : EdgeInsets.all(fixPadding * 2.0),
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
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        item['image'],
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    widthSpace,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                item['name'],
                                style: black14BoldTextStyle,
                              ),
                              ratingBar(item['rating']),
                            ],
                          ),
                          heightSpace,
                          Text(
                            item['review'],
                            style: black14RegularTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              fixPadding * 2.0, 0.0, fixPadding * 2.0, fixPadding * 2.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: AllReviews(),
                ),
              );
            },
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              height: 40.0,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: whiteColor,
                border: Border.all(width: 1.0, color: primaryColor),
              ),
              child: Text(
                'View all reviews',
                style: primaryColor16BoldTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }

  ratingBar(number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (number == 1 ||
                number == 2 ||
                number == 3 ||
                number == 4 ||
                number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 2 || number == 3 || number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 3 || number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
      ],
    );
  }
}
