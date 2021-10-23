import 'package:flutter/material.dart';

class MyConstant {
  //General
  static String appName = 'Shopping Mall';

  //Route
  static String rounteAuthen = '/authen';
  static String rounteCreateAccount = '/createAccount';
  static String rounteBuyerService = '/buyerService';
  static String rounteSellerService = '/sellerService';
  static String rounteRiderService = '/riderService';

  //Image

  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String image3 = 'images/image3.png';
  static String image4 = 'images/image4.png';
  static String image5 = 'images/avatar.png';

  //Style
  TextStyle h1Style() =>
      TextStyle(fontSize: 25, color: dart, fontWeight: FontWeight.bold);
  TextStyle h2Style() =>
      TextStyle(fontSize: 18, color: dart, fontWeight: FontWeight.w700);
  TextStyle h3Style() =>
      TextStyle(fontSize: 14, color: dart, fontWeight: FontWeight.normal);

  //Color
  static Color primary = Color(0xffab47bc);
  static Color dart = Color(0xff790e8b);
  static Color ligth = Color(0xffdf78ef);

  // ButtonStyle
  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
        primary: MyConstant.dart,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );
}
