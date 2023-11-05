import 'package:ecommerceapplication/const/image.dart';
import 'package:flutter/cupertino.dart';

Widget authbackground({Widget? child}){
  return Container(
    height: 400,
    decoration: BoxDecoration(
      image: DecorationImage(image:AssetImage(authbg),fit: BoxFit.fill),
    ),
    child: child,

  ) ;
}

