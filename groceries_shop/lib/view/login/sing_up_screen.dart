

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/auth2_controller.dart';

import 'package:groceries_shop/view/login/login_screen.dart';
import 'package:groceries_shop/view/login/select_location_screen.dart';
import 'package:groceries_shop/widget/buttons.dart';
class SingupScreen extends StatelessWidget {
  const SingupScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    var controllerUserName= TextEditingController();
    var controllerEmail= TextEditingController();
    var controllerPassWord= TextEditingController();

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
                "Sing Up ",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                "Enter your credentials to continue ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                "Username ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              TextField(
                controller: controllerUserName,
                decoration: const InputDecoration(
                  hintText: "Afsar Hossen Shuvo",
                  hintStyle:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
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
              RichText(
                text: const TextSpan(

                    children: [
                      TextSpan(
                          text: "By continuing you agree to our ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy",
                              color: Colors.black)),
                      TextSpan(
                          text: " Terms of Serviceand ",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xFF53B175))),
                      TextSpan(
                          text: " and",
                          style: TextStyle(
                              fontSize: 14, color: Colors.black)),
                      TextSpan(
                          text: " Privacy Policy.",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xFF53B175))),
                    ]),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              buttons(
                  name: "Sing Up",
                  colors: const Color(0xFF53B175),
                  withbutton: 364,
                  heightbutton: 67,
                onTap: (){
                    if(controllerUserName.text.isEmpty||controllerEmail.text.isEmpty||controllerPassWord.text.isEmpty)
                      {
                        Get.snackbar("error", "bạn phải nhập đầy đủ thông tin");
                      }
                    else
                      {
                        Authentication().signUp(email: controllerEmail.text, password: controllerPassWord.text)
                            .then((value)  {
                          if(value==null)
                          {
                            Map<String,dynamic> user={"email_login":controllerEmail.text,"password":controllerPassWord.text,"user_name":controllerUserName.text};
                            Authentication().postFirestore(user);
                            Get.to(SelectLocationScreen(email: controllerEmail.text, name: controllerUserName.text, pass: controllerPassWord.text));
                          }
                          else
                          {
                            Get.snackbar('Thông báo', 'Lỗi');
                          }

                        });
                      }
                }
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Center(
                child: RichText(
                  text: TextSpan(

                      children: [
                        const TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Gilroy",
                                color: Colors.black)),
                        TextSpan(
                            text: " Login",
                            recognizer:  TapGestureRecognizer()..onTap = () {
                              Get.to( const LoginScreen());
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
