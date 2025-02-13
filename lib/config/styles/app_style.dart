import 'package:flutter/material.dart';

class AppStyle {
  static const primaryColor = Color.fromRGBO(231, 46, 111, 1);

  static const lightColor = Color.fromARGB(255, 225, 226, 215);

  static const backgroundColor = Color.fromRGBO(247, 165, 39, 1);

  static const secondAppBarColor = Color.fromRGBO(103,114,12, 1);

  static OutlineInputBorder inpuBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: AppStyle.primaryColor, width: 2), 
    borderRadius: BorderRadius.circular(15)
  );

  static const inputIcon = Icon(Icons.search_outlined, color: AppStyle.primaryColor);

  static const containerTitleTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white);

  static final containerSubtitleTextStyle = TextStyle(color: Colors.grey[300]);

  static const secondContainerTitleTextStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);

  static const generalTitle = TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black);

  static const generalSubtitle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white);

  static const generalParagraphBold = TextStyle(fontSize: 18, color: Colors.black);

  static const generalParagraph = TextStyle(fontSize: 18, color: Colors.white);

  static const generalParagraphPrimaryColor = TextStyle(fontSize: 18, color: AppStyle.primaryColor, fontWeight: FontWeight.bold);
}