
import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries_shop/view/home/home_screen.dart';

class SigninPhoneNumber extends GetxController{
 var authState = " ".obs;
 String verificationId=" ";
 var auth = FirebaseAuth.instance;
  varifiPhone(String phone) async {
    await auth.verifyPhoneNumber(
      phoneNumber: '+84${(phone)}',
        verificationCompleted: (AuthCredential authCredential){

        },
        verificationFailed: (authException){
          Get.snackbar("error","error when send code");
        },
        codeSent: (String id, int? resendToken ){
            verificationId = id;
            update();
            authState.value="login Success";
        },
      codeAutoRetrievalTimeout: (id){
         verificationId = id;
         update();
      },
      timeout: const Duration(seconds: 60),

    );

  }
  verifyOTP(String otp) async {
   var credential= await auth.signInWithCredential(
      PhoneAuthProvider.credential(verificationId: verificationId, smsCode: otp)
    );
   if(credential.user!=null){
     Get.to(const HomeScreen());
   }
  }


}