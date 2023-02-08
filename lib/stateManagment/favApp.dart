// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counterController.dart';

class FavApp extends StatefulWidget {
  const FavApp({super.key});

  @override
  State<FavApp> createState() => _FavAppState();
}

class _FavAppState extends State<FavApp> {
  CounterControllr controllr = Get.put(CounterControllr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Favorite App")),
        body: ListView.builder(
          itemCount: controllr.favList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    if (controllr.tempFavList
                        .contains(controllr.favList[index].toString())) {
                      controllr
                          .removeFavItem(controllr.favList[index].toString());
                    } else {
                      controllr.addFavItem(controllr.favList[index].toString());
                    }
                  },
                  title: Text(controllr.favList[index].toString()),
                  trailing: Obx(() {
                    return Icon(Icons.favorite,
                        color: controllr.tempFavList
                                .contains(controllr.favList[index].toString())
                            ? Colors.red
                            : Colors.grey);
                  })),
            );
          },
        ));
  }
}
