import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'GetxLanguageChange/languages.dart';
import 'stateManagment/favApp.dart';

// ya hm list mai hr kici type ki value ni dy skty
// data hm second screen sy 1st screen pa ni baij skty?
// how to pass data one screen to multiple screens
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale("en",
          "US"), //means Locallization, duniya mai jitni b languages use hoti hn, inka country code deya jata ha, like pakistan ka pk, Others like UK,US etc
      /*   fallbackLocale: const Locale("en",
          'US'), */ // agr koe language nhi select tu isy by defult koe language set kr dyty hn
      translations: Languages(), // for translate language
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const FavApp(),
// Getx Routing
// How to manage routes in getx
// Define Your all screen here and then use Get.toNamed(...) for navigate
      /*  getPages: [
        GetPage(name: "/RouteScreenOne", page: () => const RouteScreenOne()),
        GetPage(name: "/RouteScreenTwo", page: () => const RouteScreenTwo()),
      ], */
    );
  }
}


//************************Getx*************************** */
//******************Utils********************* */
//Things i Cover in this project
//create project and add getx package
// why we use Getmaterial app
//Getx Snackbar, Dialogue box, Bottom sheet 
//Change theme (Dark, Light)
//Getx Navigators & Routs
// How to pass data from one screen to another
// How to make application responsice using Getx
// Change te language of application (Urdu & English) in getx
//*******************State Management***************** */