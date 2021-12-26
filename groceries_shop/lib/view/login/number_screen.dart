import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/verification_controller.dart';
import 'package:groceries_shop/view/login/verification.dart';
class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var controllerNumberphone = TextEditingController();
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
            const Text("Enter your mobile number ",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,fontFamily: "Gilroy"),),
            const Text("Mobile Number ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,fontFamily: "Gilroy"),),
            Padding(padding: const EdgeInsets.only(top: 20,bottom: 30),
              child: TextField(
                maxLength: 9,
                keyboardType: TextInputType.phone,
                controller: controllerNumberphone,
                decoration: InputDecoration(
                  prefixIcon: Image.asset("asset/images/national.png"),
                  hintText: "+880",hintStyle: const TextStyle(fontSize: 18,fontFamily: "Gilroy"),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(controllerNumberphone.text.isEmpty)
            {
              Get.snackbar("error", "bạn phải nhập đầy đủ thông tin");
            }
          else{
            controllersignin.varifiPhone(controllerNumberphone.text);
            Get.to(const VerificationScreen());
          }
        },
        backgroundColor: const Color(0xFF53B175),
        child: Image.asset("asset/images/backwhite.png"),
      ),
    );
  }
}
