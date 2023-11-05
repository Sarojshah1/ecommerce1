
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
Widget custombutton({String? btnname,color,onpress,textcolor,Icon? icon}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(12),
        minimumSize: Size(330, 50),
      ),
      onPressed: onpress
      , child: btnname!.text.color(Colors.white).size(20).fontWeight(FontWeight.bold).make() );
}