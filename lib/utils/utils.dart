import 'package:flutter/material.dart';

class Utils{
  static double getMaxHeight(BuildContext context) =>  MediaQuery.of(context).size.height;
  static double getMaxWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static showMessageDialog(BuildContext context, String txt, Color color){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(txt),
      backgroundColor: color,
    ));
  }
}