import 'package:flutter/material.dart';
import 'package:urban_home/constant/constant.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = 'Stella French';
    emailController.text = 'stella@test.com';
    phoneController.text = '123456789';
    passwordController.text = '1234567';
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: whiteColor,
        title: Text(
          'Edit Profile',
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
          Container(
            padding: EdgeInsets.all(fixPadding * 2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 160.0,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        width: width - fixPadding * 4.0,
                        alignment: Alignment.center,
                        child: Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70.0),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/user/user_5.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                          width: width - fixPadding * 4.0,
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () => _selectOptionBottomSheet(),
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              width: 140.0,
                              padding: EdgeInsets.symmetric(
                                  vertical: fixPadding * 0.6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.orange,
                                border: Border.all(
                                  width: 2.0,
                                  color: whiteColor,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.camera_alt,
                                    size: 16.0,
                                    color: whiteColor,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Change',
                                    style: white12MediumTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                heightSpace,

                // Name Field Start
                Container(
                  padding: EdgeInsets.only(top: fixPadding, bottom: fixPadding),
                  child: Theme(
                    data: ThemeData(
                      primaryColor: greyColor,
                      textSelectionTheme: TextSelectionThemeData(
                        cursorColor: primaryColor,
                      ),
                    ),
                    child: TextField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      style: black14MediumTextStyle,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: black14MediumTextStyle,
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(color: greyColor, width: 0.7),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                // Name Field End

                // Email Field Start
                Container(
                  padding: EdgeInsets.only(top: fixPadding, bottom: fixPadding),
                  child: Theme(
                    data: ThemeData(
                      primaryColor: greyColor,
                      textSelectionTheme: TextSelectionThemeData(
                        cursorColor: primaryColor,
                      ),
                    ),
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: black14MediumTextStyle,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: black14MediumTextStyle,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 0.7),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                // Email Field End

                // Phone Number Field Start
                Container(
                  padding: EdgeInsets.only(top: fixPadding, bottom: fixPadding),
                  child: Theme(
                    data: ThemeData(
                      primaryColor: greyColor,
                      textSelectionTheme: TextSelectionThemeData(
                        cursorColor: primaryColor,
                      ),
                    ),
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      style: black14MediumTextStyle,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: black14MediumTextStyle,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 0.7),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                // Phone Number Field End

                // Password Field Start
                Container(
                  padding: EdgeInsets.only(top: fixPadding, bottom: fixPadding),
                  child: Theme(
                    data: ThemeData(
                      primaryColor: greyColor,
                      textSelectionTheme: TextSelectionThemeData(
                        cursorColor: primaryColor,
                      ),
                    ),
                    child: TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.number,
                      style: black14MediumTextStyle,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: black14MediumTextStyle,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 0.7),
                        ),
                      ),
                      obscureText: true,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                // Password Field End
                heightSpace,
                // Save Button Start
                InkWell(
                  onTap: () => Navigator.pop(context),
                  borderRadius: BorderRadius.circular(7.0),
                  child: Container(
                    width: width,
                    padding: EdgeInsets.all(fixPadding * 1.5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: primaryColor,
                    ),
                    child: Text(
                      'Save',
                      style: white14BoldTextStyle,
                    ),
                  ),
                ),
                // Save Button End
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Bottom Sheet for Select Options (Camera or Gallery) Start Here
  void _selectOptionBottomSheet() {
    double width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            color: whiteColor,
            child: Wrap(
              children: <Widget>[
                Container(
                  child: Container(
                    padding: EdgeInsets.all(fixPadding),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: width,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Choose Option',
                            textAlign: TextAlign.center,
                            style: black18BoldTextStyle,
                          ),
                        ),
                        heightSpace,
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: fixPadding),
                          width: width,
                          height: 1.0,
                          color: greyColor.withOpacity(0.5),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: width,
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 20.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text('Camera', style: black14MediumTextStyle),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: width,
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.photo_album,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 20.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Upload from Gallery',
                                  style: black14MediumTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
  // Bottom Sheet for Select Options (Camera or Gallery) Ends Here
}
