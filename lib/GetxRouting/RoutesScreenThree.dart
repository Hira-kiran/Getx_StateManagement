// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteScreenThree extends StatelessWidget {
  const RouteScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Routing Screen Three"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Get.back();
          Get.back();
        },
        child: const Text("screen 3"),
      ),
    );
  }
}
