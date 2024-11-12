import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorials/screen_one.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: const Text("Get x Tutorial"),
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
        child: Column(
          children: [
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
                Get.defaultDialog(
                    title: "I am dialogue",
                    titlePadding: const EdgeInsets.only(top: 20),
                    contentPadding: const EdgeInsets.all(20),
                    middleText: "Are you sure you want to delete it?",
                    //  textConfirm: "Yes",
                    // textCancel: "no"
                    /*   content: Column(
                  children: [
                    Text("Cancel"),
                    Text("Cancel"),
                    Text("Cancel"),
                    Text("Cancel"),
                    Text("Cancel"),
                  ],
                 ),*/
                    confirm: TextButton(
                        onPressed: () {
                          //Navigator.pop(context);
                          Get.back();
                        },
                        child: const Text("Ok")),
                    cancel:
                        TextButton(onPressed: () {}, child: const Text("No")));
              },
              child: const Text(
                "Get x default dialogue",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
              child: const Text(
                "Get x Dark mode",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
              child: const Text(
                "Get x Light mode",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.light_mode,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Light Theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Dark Theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
              child: const Text(
                "Get Bottom Sheet",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
                Get.toNamed('/screenOne',
                    arguments: ['Hassan mirza', 'Flutter Engineer']);
              },
              child: const Text(
                "Move to screen one",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
