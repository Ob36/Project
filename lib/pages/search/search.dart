import 'package:flutter/material.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/widget/column_builder.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final recentSearchesList = [
    {'title': 'Home cleaning service'},
    {'title': 'Electrician'},
  ];

  final trendingList = [
    {'title': 'Sofa cleaning services'},
    {'title': 'Head massage services'},
    {'title': 'Plumber'},
    {'title': 'Hair cutting at home'},
    {'title': 'Ac repair services'},
    {'title': 'Home sanitizing'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            heightSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: blackColor,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            searchTextField(),
            recentSearches(),
            height20Space,
            trendingSearches(),
            height20Space,
          ],
        ),
      ),
    );
  }

  searchTextField() {
    return Container(
      height: 40.0,
      margin: EdgeInsets.all(fixPadding * 2.0),
      alignment: Alignment.center,
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
      child: TextField(
        style: black14MediumTextStyle,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: 'Serach for services',
          hintStyle: grey16MediumTextStyle,
          contentPadding: EdgeInsets.only(bottom: 7.0),
          prefixIcon: Icon(
            Icons.search,
            color: greyColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  recentSearches() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your recent searches',
            style: black16BoldTextStyle,
          ),
          ColumnBuilder(
            itemCount: recentSearchesList.length,
            itemBuilder: (context, index) {
              final item = recentSearchesList[index];
              return Padding(
                padding: const EdgeInsets.only(top: fixPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.history,
                      size: 22.0,
                      color: greyColor,
                    ),
                    width5Space,
                    Expanded(
                      child: Text(
                        item['title'],
                        style: black14MediumTextStyle,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  trendingSearches() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending around you',
            style: black16BoldTextStyle,
          ),
          ColumnBuilder(
            itemCount: trendingList.length,
            itemBuilder: (context, index) {
              final item = trendingList[index];
              return Padding(
                padding: const EdgeInsets.only(top: fixPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.trending_up,
                      size: 22.0,
                      color: greyColor,
                    ),
                    width5Space,
                    Expanded(
                      child: Text(
                        item['title'],
                        style: black14MediumTextStyle,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
