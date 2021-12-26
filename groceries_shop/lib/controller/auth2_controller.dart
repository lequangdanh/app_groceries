import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';


import 'package:get/get.dart';
import 'package:groceries_shop/view/home/home_screen.dart';

import 'package:groceries_shop/view/login/sing_in_screen.dart';


class Authentication {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get userId => auth.currentUser!.uid;

  Future postFirestore(Map<String,dynamic> data) async{
    DocumentReference<Map<String, dynamic>> reference=FirebaseFirestore.instance.collection('users').doc(userId);
    reference.set(data);
  }
  Future putFirestore(Map<String,dynamic> data) async{
    DocumentReference<Map<String, dynamic>> reference=FirebaseFirestore.instance.collection('users').doc(userId);
    reference.update(data);
  }

  Future signUp({required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }


  Future signIn({required String email,required  String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password).then((value) => Get.to(const HomeScreen()));
      return null;
    } on FirebaseAuthException catch (e) {
      Get.snackbar("error", "sai tên tài khoản hoặc mật khẩu");
    }
  }

  Future resetPassWord({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future signOut() async {
    await auth.signOut();
    Get.offAll((const SingInScreen()));
  }
  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}