import 'package:ecommerceapplication/View/category.dart';
import 'package:ecommerceapplication/View/gift.dart';
import 'package:ecommerceapplication/View/notification.dart';
import 'package:ecommerceapplication/View/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../const/image.dart';
import '../controller/home_controller.dart';
import 'Home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(HomeController());
    var navbody=[

      const CategoryScreen(),
      const NotificationScreen(),
      const HomeScreen(),
      const GiftScreen(),
      const ProfileScreen()


    ];

    var navbaritem=[
      BottomNavigationBarItem(icon: Image.asset(category,width: 45,),label: "More"),
      BottomNavigationBarItem(icon: Image.asset(notification,width: 45,),label: "Notofication"),
      BottomNavigationBarItem(icon: Image.asset(home,width: 45,),label: "Home"),
      BottomNavigationBarItem(icon: Image.asset(gift,width: 45,),label: "Gift"),
      BottomNavigationBarItem(icon: Image.asset(profile,width: 45,),label: "Profile")
    ];
    return  Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navbody.elementAt(controller.currentNavIndex.value),)),
        ],
      ),
      bottomNavigationBar: Obx(()=>
          BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: Colors.green,
            selectedLabelStyle: const TextStyle(fontFamily: Vx.cyanHex50),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: navbaritem,
            onTap: (value){
              controller.currentNavIndex.value=value;
            },),
      ),
    );
  }
}