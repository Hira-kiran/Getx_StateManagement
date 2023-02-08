// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counterController.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  final CounterControllr controllr = Get.put(CounterControllr());
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Example"),
        ),
        body: InkWell(
            onTap: () {
              controllr.increament();
            },
            child: Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 132, 226, 135),
              child: Center(
                child: Obx(() {
                  return Text(controllr.counter.toString());
                }),
              ),
            )));
  }
}
