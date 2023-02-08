// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'RouteScreenTwo.dart';

class RouteScreenOne extends StatelessWidget {
  const RouteScreenOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Routing Screen One"),
      ),
      body: ElevatedButton(
        onPressed: () {
          // pass data from one screen to another screen, its to much easy
          Get.to(const RouteScreenTwo(), arguments: [
            "Hira",
            "Kiran",
            "66",
            "images/download.jpg",
            "A paragraph is a group of sentences that fleshes out a single idea. In order for a paragraph to be effective, it must begin with a topic sentence, have sentences that support the main idea of that paragraph, and maintain a consistent flow."
          ]);
        },
        child: const Text("screen one"),
      ),
    );
  }
}
