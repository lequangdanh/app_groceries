import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
Widget sliders({required Image image1, required Image image2, required Image image3,required double height}){
  return ImageSlideshow(
    height: height,
      width: Get.width*1,
      children: [
        image1,
        image2,
        image3,

  ],
      autoPlayInterval: 3000,
    isLoop: true,

  );
}