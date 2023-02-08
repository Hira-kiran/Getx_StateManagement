// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetxstatemenagment/stateManagment/counterController.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({super.key});

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  final CounterControllr controllr = Get.put(CounterControllr());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.black.withOpacity(controllr.opacity.value),
                ),
                Slider(
                    value: controllr.opacity.value,
                    onChanged: (value) {
                      controllr.opacity.value = value;
                    })
              ],
            );
          }),
        ],
      ),
    );
  }
}
