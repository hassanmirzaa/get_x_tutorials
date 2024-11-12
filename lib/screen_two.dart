import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Hassan', 'Sample snackbar',
            colorText: Colors.white,
            // backgroundColor: Colors.deepPurple.withOpacity(0.5),
            icon: const Icon(
              Icons.error,
              color: Colors.white,
            ),
            //  snackPosition: SnackPosition.BOTTOM
          );
        },
        child: const Icon(
          Icons.error,
          color: Colors.deepPurple,
        ),
      ),
      body: Center(
        child:  MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
            //    Get.changeTheme(ThemeData.light());
            Get.back();
            Get.back();
              },
              child: const Text(
                "Go Back",
                style: TextStyle(color: Colors.white),
              ),
            ),
      ),
    );
  }
}