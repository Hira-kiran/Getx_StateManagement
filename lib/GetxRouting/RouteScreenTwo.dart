// ignore_for_file: prefer_interpolation_to_compose_strings, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'RoutesScreenThree.dart';

class RouteScreenTwo extends StatelessWidget {
  const RouteScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Routing Screen Two"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(const RouteScreenThree());
            },
            child: Text("screen" + Get.arguments[1]),
          ),
          Image.asset(Get.arguments[3]),
          Text(Get.arguments[4])
        ],
      ),
    );
  }
}
