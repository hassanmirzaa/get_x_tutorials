import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_x_tutorials/homepage.dart';
import 'package:get_x_tutorials/screen_one.dart';
import 'package:get_x_tutorials/screen_two.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(theme: ThemeData(
      appBarTheme: const AppBarTheme(
        centerTitle: true
       )
    ),
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      getPages: [
        GetPage(name: '/', page: () => Homepage(),),
        GetPage(name: '/screenOne', page: () => ScreenOne()),
        GetPage(name: '/screenTwo', page: () => ScreenTwo()),
      ],
    );
  }
}
