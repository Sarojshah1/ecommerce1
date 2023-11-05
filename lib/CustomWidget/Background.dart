import 'package:flutter/cupertino.dart';

Widget background({Widget? child,image,height,width}){
  return Container(
    height: height,
    width: width,

    decoration: BoxDecoration(
      image: DecorationImage(image:AssetImage(image),fit: BoxFit.fill),
    ),
    child: child,

  ) ;
}

