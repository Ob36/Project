import 'package:flutter/material.dart';
import 'package:urban_home/constant/constant.dart';

class AllReviews extends StatefulWidget {
  @override
  _AllReviewsState createState() => _AllReviewsState();
}

class _AllReviewsState extends State<AllReviews> {
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
    {
      'name': 'Peter Jones',
      'image': 'assets/user/user_8.jpg',
      'review': 'Fantastic service.',
      'rating': 5
    },
    {
      'name': 'Faina Maxwell',
      'image': 'assets/user/user_5.jpg',
      'review': 'Decent service.',
      'rating': 3
    },
    {
      'name': 'Steve Smith',
      'image': 'assets/user/user_6.jpg',
      'review': 'Amazing work.',
      'rating': 5
    },
    {
      'name': 'Criss Linn',
      'image': 'assets/user/user_2.jpg',
      'review': 'Nice work. Clean and super fast.',
      'rating': 5
    },
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
          'All Reviews',
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
        physics: BouncingScrollPhysics(),
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
