import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils{

  static Color primaryColor = const Color(0XFF0CABDF);
  static Color grey = const Color(0XFF0CABDF);

  static Color textGrey = const Color(0XFF8C8C8E);
  static Color whiteColor = const Color(0XFFFFFFFF);

  static TextStyle textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: primaryColor);

  static TextStyle ElevatedButtonTextStyleWhite = TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: whiteColor);
  static ButtonStyle ElevatedButtonStyleOrange = ElevatedButton.styleFrom(primary: Color(0xFF0CABDF),
      side: BorderSide(width: 1, color: Colors.transparent), elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)),),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0));

}