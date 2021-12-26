import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:groceries_shop/controller/verification_controller.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controllerOTP = TextEditingController();
    SigninPhoneNumber controllersignin = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset("asset/images/backblack.png"),
          onTap: (){
            Get.back();
          },
        ),
        leadingWidth: 45,
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enter your 4-digit code ",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,fontFamily: "Gilroy"),),
            const Text("Code  ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,fontFamily: "Gilroy"),),
            Padding(padding: const EdgeInsets.only(top: 20,bottom: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controllerOTP,
                decoration: const InputDecoration(

                  hintText: "----",hintStyle: TextStyle(fontSize: 18,fontFamily: "Gilroy"),
                ),
              ),
            ),

          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          if(controllerOTP.text.isEmpty)
            {
              Get.snackbar("error", "bạn phải nhập mã OTP");

            }
          else{
            controllersignin.verifyOTP(controllerOTP.text);
          }
        },
        backgroundColor: const Color(0xFF53B175),
        child: Image.asset("asset/images/backwhite.png"),
      ),
     bottomSheet:  const Padding(
       padding: EdgeInsets.only(left: 20, bottom: 30),
       child:Text("Resend Code  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,fontFamily: "Gilroy",color: Color(0xFF53B175)),),
     ),
    );
  }
}
