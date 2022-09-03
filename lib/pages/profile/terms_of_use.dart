import 'package:flutter/material.dart';
import 'package:urban_home/constant/constant.dart';

class TermsOfUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: whiteColor,
        title: Text(
          'Terms of use',
          style: black18BoldTextStyle,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          heightSpace,
          heightSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas aenean scelerisque egestas turpis suspendisse arcu eu. Vitae malesuada ac et arcu, luctus condimentum nec. Egestas adipiscing et, euismod elementum cras. Risus, est ullamcorper urna vel consequat, quis at.',
              style: black14MediumTextStyle,
              textAlign: TextAlign.justify,
            ),
          ),
          heightSpace,
          heightSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas aenean scelerisque egestas turpis suspendisse arcu eu. Vitae malesuada ac et arcu, luctus condimentum nec. Egestas adipiscing et, euismod elementum cras. Risus, est ullamcorper urna vel consequat, quis at.',
              style: black14MediumTextStyle,
              textAlign: TextAlign.justify,
            ),
          ),
          heightSpace,
          heightSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas aenean scelerisque egestas turpis suspendisse arcu eu. Vitae malesuada ac et arcu, luctus condimentum nec. Egestas adipiscing et, euismod elementum cras. Risus, est ullamcorper urna vel consequat, quis at.',
              style: black14MediumTextStyle,
              textAlign: TextAlign.justify,
            ),
          ),
          heightSpace,
          heightSpace,
        ],
      ),
    );
  }
}
