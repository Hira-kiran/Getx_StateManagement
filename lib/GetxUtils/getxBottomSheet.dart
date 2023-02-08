// ignore_for_file: file_names
//  Bottom sheet
// Change theme
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxBottomSheet extends StatelessWidget {
  const GetxBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx Bottom sheet")),
      body: ElevatedButton(
        child: const Text("Show Bottom sheet"),
        onPressed: () {
          Get.bottomSheet(
              Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      const Text("Change Theme"),
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                        title: const Text("Light Mode"),
                        leading: const Icon(Icons.light_mode),
                      ),
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                        title: const Text("Dark Mode"),
                        leading: const Icon(Icons.dark_mode),
                      ),
                    ],
                  )),
              enableDrag: false,
              isDismissible: false,
              barrierColor: Colors.transparent);
        },
      ),
    );
  }
}
