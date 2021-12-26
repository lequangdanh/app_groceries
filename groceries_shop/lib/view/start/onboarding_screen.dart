import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:groceries_shop/view/login/sing_in_screen.dart';
import 'package:groceries_shop/widget/buttons.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width*1,
        height: Get.height*1,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/onboarding.png"),
            fit: BoxFit.cover,
          ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Column(children: const [
              Text("Welcome ",style: TextStyle(fontSize: 48,fontWeight: FontWeight.w600,color: Colors.white,fontFamily: "Gilroy"),),
              Text(" to our store",style: TextStyle(fontSize: 48,fontWeight: FontWeight.w600,color: Colors.white),),
            ],),
            const Padding(padding: EdgeInsets.only(bottom: 15)),
            const Text("Ger your groceries in as fast as one hour",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white54,fontFamily: "Gilroy"),),
            const Padding(padding: EdgeInsets.only(bottom: 40)),
             buttons(name:"Get Started",colors: Colors.green,withbutton: 353,heightbutton: 67, onTap: (){
               Get.to(const SingInScreen());
             }),
            const Padding(padding: EdgeInsets.only(bottom: 90))
          ],
        ),
      ),
    );
  }
}
