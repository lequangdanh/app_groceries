import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:groceries_shop/controller/auth2_controller.dart';
import 'package:groceries_shop/view/home/home_screen.dart';
import 'package:groceries_shop/widget/buttons.dart';

class SelectLocationScreen extends StatelessWidget {
  SelectLocationScreen({Key? key,required this.email,required this.name,required this.pass}) : super(key: key);
   var email;
   var pass;
   var name;
  @override
  Widget build(BuildContext context) {

     var controllerzone = TextEditingController();
     var controllerarea = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset("asset/images/backblack.png"),
          onTap: (){
               Get.back();
          },
        ),
        leadingWidth: 45,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                height: Get.height * 0.3,
                width: Get.height * 1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("asset/images/location.png"),
                      fit: BoxFit.fill,
                    )),
              ),
              const Text(
                "Select Your Location ",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              const Text(
                "Swithch on your location to stay in tune with ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              const Text(
                "what’s happening in your area",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy"),
              ),
              Padding(padding: const EdgeInsets.only(left: 20,right: 20,top:40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Your Zone ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy"),
                    ),


                    TextField(
                      controller: controllerzone,
                      decoration: const InputDecoration(
                        hintText: "Types of your area",

                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top:20)),
                    const Text(
                      "Your Area ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy"),
                    ),

                    TextField(
                      controller: controllerarea,
                      decoration: const InputDecoration(
                        hintText: "Types of your area",

                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top:20)),
                    buttons(name: "Submit", colors: const Color(0xFF53B175),withbutton: 364,heightbutton: 67,
                      onTap: (){
                        if(controllerzone.text.isEmpty||controllerarea.text.isEmpty)
                          {
                            Get.snackbar("error", "bạn phải chọn vị trí của bạn");
                          }
                        else
                          {
                            Map<String,dynamic> user={"zone_local":controllerzone.text,"area_local":controllerarea.text,"email_login":email,"user_name":name,"pass":pass};
                            Authentication().postFirestore(user).then((value) => Get.to(const HomeScreen()));
                          }
                      }
                    ),
                  ],
                ),
              ),




            ],
          ),

      ),
    );
  }
}
