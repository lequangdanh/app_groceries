import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/verification_controller.dart';
import 'package:groceries_shop/view/login/verification.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controllerOTP = TextEditingController();
    SigninPhoneNumber controllersignin = Get.find();
    return Scaffold(
      body: Center(
        child: TextField(
          controller: controllerOTP,
          decoration: const InputDecoration(
            hintText: "Nhap OTP",
          ),
        ),


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(controllerOTP.text.isEmpty)
            {
              Get.snackbar("error", "bạn phải nhập đầy đủ thông tin");
            }
          else
            {
              controllersignin.varifiPhone(controllerOTP.text);
              Get.to(const VerificationScreen());
            }
        },
        backgroundColor: const Color(0xFF53B175),
        child: Image.asset("asset/images/backwhite.png"),
      ),
    );
  }
}
