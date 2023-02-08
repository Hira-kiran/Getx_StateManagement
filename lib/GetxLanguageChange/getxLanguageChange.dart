// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxLanguageChange extends StatelessWidget {
  const GetxLanguageChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx Language Change")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("message".tr),
          Text("name".tr),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("en", "UK"));
                  },
                  child: const Text("English")),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("ur", "PK"));
                  },
                  child: const Text("Urdu")),
            ],
          ),
        ],
      ),
    );
  }
}
