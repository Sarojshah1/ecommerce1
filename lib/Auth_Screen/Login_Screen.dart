
import 'package:ecommerceapplication/Auth_Screen/ForgetPassword.dart';
import 'package:ecommerceapplication/Auth_Screen/Signup.dart';

import 'package:ecommerceapplication/CustomWidget/customstack.dart';
import 'package:ecommerceapplication/CustomWidget/textbox.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../CustomWidget/custom button.dart';
import '../View/app.dart';
// import '../theme/notification_service.dart';
// import '../theme/themesservice.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var notifyHelper;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   notifyHelper=NotifyHelper();
  //   NotifyHelper().initializeNotification();
  //   NotifyHelper().requestIOSPermissions();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("LogIn",),
        leading: GestureDetector(
          onTap: (){
            // ThemeService().SwitchTheme();
            // NotifyHelper().displayNotification(title: "hello User", body: Get.isDarkMode?"Activated light theme":"Dark theme Activated");
            // NotifyHelper().scheduledNotification();

          },
          child: Icon(Get.isDarkMode? Icons.sunny:Icons.dark_mode,size: 20,
            color: Get.isDarkMode? Colors.white:Colors.black,),
        ),
        actions: [

          SizedBox(width: 20,),
          Icon(Icons.person,size: 20,),

        ],
      ),
      body:CustomStack(child: Column(
        children: [
          SizedBox(height: 40,),
          Customtextbox(hint: "Email",ispass: false,),
          SizedBox(height: 30,),
          Customtextbox(hint: "Password",ispass: true,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30,),
              TextButton(onPressed: (){
                Get.to(()=>ForgetPassword());
              }, child: Text("Forget Password?",style: TextStyle(fontSize: 19,),)),
            ],
          ),
          SizedBox(height: 30,),
          custombutton(btnname: "Log In",color: Colors.greenAccent,textcolor: Colors.white,onpress: (){
            Get.to(()=>Home());
          },),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(width: 180,height: 2,color: Colors.blueGrey,),
              ),
              Text("OR"),
              Container(width: 180,height: 2,color: Colors.blueGrey,),
            ],
          ),
          SizedBox(height: 20,),
          custombutton(btnname: "Sign Up",color: Colors.blue,textcolor: Colors.white,onpress: (){
            Get.to(()=>SignupPage());
          },),

        ],
      )),
    );






  }
}
