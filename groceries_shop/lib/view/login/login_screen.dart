
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/auth2_controller.dart';



import 'package:groceries_shop/view/login/sing_up_screen.dart';
import 'package:groceries_shop/widget/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var controllerEmail = TextEditingController();
    var controllerPassWord = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                width: Get.width * 1,
                height: Get.height * 0.25,
                child: Center(
                  child: Image.asset("asset/images/carrot.png"),
                ),
              ),
              const Text(
                "Loging ",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                "Enter your emails and password ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                "Email ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: controllerEmail,
                decoration: const InputDecoration(
                  hintText: "imshuvo97@gmail.com",
                  hintStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                "Password ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              TextField(
                controller: controllerPassWord,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "********",
                  hintStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    "Forgot Password? ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gilroy"),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              buttons(
                  name: "Log in",
                  colors: const Color(0xFF53B175),
                  withbutton: 364,
                  heightbutton: 67,
                onTap: (){
                  Authentication().signIn(email: controllerEmail.text, password:controllerPassWord.text);
                }
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Center(
                child: RichText(
                  text: TextSpan(

                      children: [
                        const TextSpan(
                            text: "Don’t have an account?",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Gilroy",
                                color: Colors.black)),
                        TextSpan(
                            text: " Singup",
                            recognizer:  TapGestureRecognizer()..onTap = () {
                              Get.to(const SingupScreen());
                            },
                            style: const TextStyle(
                                fontSize: 14, color: Color(0xFF53B175))),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

}
