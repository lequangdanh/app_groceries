import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/view/start/onboarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatortohome();
  }
  _navigatortohome() async{
    await Future.delayed(const Duration(seconds: 3),(){
      Get.off(const OnboardingScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height*1 ,
        width: Get.width*1,
        color: Colors.green,
        child: Image.asset("asset/images/splash1.png"),

      ),
    );
  }
}



