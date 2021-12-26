


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



import 'package:groceries_shop/view/start/splash_screen.dart';







 main()  async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      // initialBinding: InstanceBinding(),

      initialRoute: '/',
      routes: {
        '/':(context) => Splash(),
      }
    ),

  );
}


