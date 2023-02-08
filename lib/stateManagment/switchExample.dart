// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetxstatemenagment/stateManagment/counterController.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  CounterControllr controllr = Get.put(CounterControllr());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(title: const Text("Switch Example")),
      body: Column(
        children: [
          Obx(() {
            return Switch(
                value: controllr.switchBtn.value,
                onChanged: (value) {
                  controllr.swichController(value);
                });
          }),
        ],
      ),
    );
  }
}
