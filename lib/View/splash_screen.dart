import 'package:ecommerceapplication/Auth_Screen/Login_Screen.dart';
import 'package:ecommerceapplication/CustomWidget/Background.dart';
import 'package:ecommerceapplication/const/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changescreen(){
     Future.delayed(const Duration(seconds: 3),(){
       Get.to(()=>const LoginPage());
     });

  }
  void initState() {
    changescreen();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: background(
        width: double.infinity,
        height:double.infinity ,
        image: splashBg,
        child: Column(
          children: [
            SizedBox(height: 70,),
            Image.asset(logo,height: 82,width: 190,),
            SizedBox(height: 440,),
            Text("Collect Rewards",style: TextStyle(fontSize: 34,color: Colors.white,fontWeight: FontWeight.bold),),
            Text("Explore your true style",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600)),
            SizedBox(height: 40,),
            CircularProgressIndicator()


          ],
        )
      ),
    );
  }
}
