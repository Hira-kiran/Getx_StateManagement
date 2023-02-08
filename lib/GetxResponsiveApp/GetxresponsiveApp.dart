// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxResponsiveApp extends StatelessWidget {
  const GetxResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Responsive Application"),
      ),
      // 1 is the full size of screen
      //you can say that 1 means 1000 and similarly .9 means 900 ,.8 mean 800 and so on...This is same like media query
      body: Container(
        // height: MediaQuery.of(context).size.height * 1,
        height: Get.height * 1,
        width: Get.width * .8,
        color: Colors.amber,
      ),
    );
  }
}
