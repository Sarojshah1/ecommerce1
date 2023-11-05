
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
Widget Customtextbox({String? title, String? hint,controller,ispass}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      7.heightBox,
      TextFormField(


        obscureText: ispass,
        controller: controller,
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.only(left: 20,right: 20),
          constraints: BoxConstraints.expand(width: 350,height: 50),

          labelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
          labelText: hint,
          fillColor: Colors.black,
          focusColor: Colors.black,



        ),
      ),
      10.heightBox
    ],
  );
}