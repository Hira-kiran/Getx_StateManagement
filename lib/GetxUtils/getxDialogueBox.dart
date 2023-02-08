// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxDialogueBox extends StatelessWidget {
  const GetxDialogueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Dialogue Box"),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "Delete Item",
                  /*  textConfirm: "Yes",
                  textCancel: "No", */
                  confirm: TextButton(
                      onPressed: () {}, child: const Text("Yes")), // custom
                  cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("No")), // custom
                  content: const Text("Are you sure to delete this?"),
                  backgroundColor: Colors.grey,
                  buttonColor: Colors.pink,
                  titlePadding: const EdgeInsets.all(20),
                  contentPadding: const EdgeInsets.all(10),
                  titleStyle: const TextStyle(
                    color: Colors.pink,
                  ));
            },
            child: const Text("Dialogue Box"))
      ]),
    );
  }
}
