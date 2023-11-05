import 'package:flutter/cupertino.dart';

import 'authback.dart';

Widget CustomStack({Widget? child}){
  return Stack(
    children: [

      Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: authbackground()),
      Positioned(
          top: 250,
          right: -20,
          left: -20,

          child: Container(
            height: 580,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                      color: CupertinoColors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5
                  )
                ]
            ),
            child: child,

          ))
    ],
  );
}