
import 'package:ecommerceapplication/Auth_Screen/ForgetPassword.dart';
import 'package:ecommerceapplication/Auth_Screen/Login_Screen.dart';

import 'package:ecommerceapplication/CustomWidget/customstack.dart';
import 'package:ecommerceapplication/CustomWidget/textbox.dart';
import 'package:ecommerceapplication/const/image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../CustomWidget/custom button.dart';
import '../View/app.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Text("Sign Up"),
      ),
      body:CustomStack(child: Column(
        children: [
          SizedBox(height: 30,),
          Text("Lets start, create your Giveji Account",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.green),),
          SizedBox(height: 30,),
          Customtextbox(hint: "Mobile Number",ispass: false,),
          SizedBox(height: 30,),
          custombutton(btnname: "SignUp",color: Colors.greenAccent,textcolor: Colors.white,onpress: (){
            Get.to(()=>Home());
          },),
          SizedBox(height: 50,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(width: 180,height: 2,color: Colors.grey,),
              ),
              Text("OR"),
              Container(width: 180,height: 2,color: Colors.grey,),
            ],
          ),
          SizedBox(height: 50,),
          custombutton(btnname: "LogIn",color: Colors.redAccent,textcolor: Colors.white,onpress: (){
            Get.to(()=>LoginPage());
          },),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 30,),
              Container(
                height:50 ,
                  width: 163,

                  child: OutlinedButton(onPressed: (){}, child: Row(children: [Image.asset(google),SizedBox(width: 30,),Text("Google",style: TextStyle(fontSize: 20,color: Colors.black54),)],),)),SizedBox(width: 15,),Container(
                  height:50 ,
                  width: 173,

                  child: OutlinedButton(onPressed: (){}, child: Row(children: [Image.asset(facebook),SizedBox(width: 10,),Text("Facebook",style: TextStyle(fontSize: 20,color: Colors.black54),)],),))
            ],
          ),

        ],
      )),
    );






  }
}
