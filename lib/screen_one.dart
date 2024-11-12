import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x_tutorials/screen_two.dart';

class ScreenOne extends StatefulWidget {
  
   ScreenOne({super.key,   });

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One" + Get.arguments[0]),
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
        child:  Column(
          children: [
            MaterialButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                //    Get.changeTheme(ThemeData.light());
                Get.toNamed('/screenTwo');
                  },
                  child: const Text(
                    "Go to Screen Two",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                Text(Get.arguments[1])
          ],
        ),
      ),
    );
  }
}