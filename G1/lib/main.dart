import 'package:flutter/material.dart';
import 'package:g1/homescreen.dart';
import 'package:g1/screenthree.dart';
import 'package:g1/screentwo.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: homescreen(),
      // Routs
      getPages: [

        GetPage(name: "/", page: () => homescreen()),
        GetPage(name: "/screentwo", page: () => screentwo()),
        GetPage(name: "/screenthree", page: () => screenthree()),
      ],
    );
  }
}

/* IN THIS EXAMPLE TOPIC INCLUDE

 1.Snackbar
 2.Alertdilog
 3.BottomSheet
 4.Them Dark/Light
 5.Navigator in GetX
 6.Routs
 */
