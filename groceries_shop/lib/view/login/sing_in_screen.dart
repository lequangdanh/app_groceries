import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/auth2_controller.dart';
import 'package:groceries_shop/controller/verification_controller.dart';
import 'package:groceries_shop/view/home/home_screen.dart';
import 'package:groceries_shop/view/login/number_screen.dart';

import 'package:groceries_shop/widget/image_button.dart';

import 'login_screen.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SigninPhoneNumber controllersignin = Get.put(SigninPhoneNumber());
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.4,
              width: Get.width * 1,

              child: Image.asset("asset/images/singin.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Get your groceries\n with nectar ",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: "Gilroy"),
                  ),
                  //Text("with nectar",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,color: Colors.black,fontFamily: "Gilroy"),)

                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: GestureDetector(
                      child:
                      TextField(
                        enabled: false,

                        decoration: InputDecoration(
                          prefixIcon: Image.asset("asset/images/national.png"),
                          hintText: "880",
                          hintStyle:
                          const TextStyle(fontSize: 18, fontFamily: "Gilroy"),
                        ),
                      ),
                      onTap: (){
                        Get.to(const NumberScreen());
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(),
                    child: Center(
                      child: Text(
                        "Or connect with social media ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Gilroy"),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 15)),
                  imageButtons(
                      name: "Continue with Google",
                      colors: const Color(0xFF5383EC),
                      imagebutton: Image.asset("asset/images/google.png"),
                      withbutton: 364,
                      heightbutton: 67,
                      fontSize: 18,
                    onTap: (){
                        Get.to(const LoginScreen());
                    }
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 15)),
                  imageButtons(
                      name: "Continue with Facebook",
                      colors: const Color(0xFF4A66AC),
                      imagebutton: Image.asset("asset/images/facebook.png"),
                      withbutton: 364,
                      heightbutton: 67,
                      fontSize: 18,
                      onTap: ()async{
                        await Authentication().signInWithFacebook();
                        Get.to(const HomeScreen());
                      }
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
