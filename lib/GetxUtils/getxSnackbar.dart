// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxSnakbar extends StatelessWidget {
  const GetxSnakbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Getx Snakbar"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.snackbar("Snackbar", "This is snackbar",
                  titleText: const Text("My name"),
                  maxWidth: 400.0,
                  messageText: const Text("Hira kiran"),
                  snackPosition: SnackPosition.BOTTOM,
                  icon: const Icon(Icons.home),
                  duration: const Duration(seconds: 2),
                  backgroundColor: Colors.amber);
            },
            child: const Text("Show Snackbar"),
          ),
        ));
  }
}
