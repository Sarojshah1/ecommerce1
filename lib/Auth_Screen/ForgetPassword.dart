import 'package:ecommerceapplication/CustomWidget/customstack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CustomWidget/custom button.dart';
import '../CustomWidget/textbox.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Text("Log In"),
      ),
      body: CustomStack(child: Column(
        children: [
          SizedBox(height: 30,),
          Text("Please Enter your Email to receive a",style: TextStyle(height: 3,color: Colors.black87,fontSize: 15),),
          Text("reset password link",style: TextStyle(color: Colors.black87,fontSize: 15)),
          SizedBox(height: 30,),
          Customtextbox(hint: "Email",ispass: false,),
          SizedBox(height: 40,),
          custombutton(btnname: "Submit",color: Colors.greenAccent,textcolor: Colors.white,onpress: (){},),
        ],
      ),),
    );
  }
}
