import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Priyadarshan",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text("Account", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 20),
            // 1st row
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Image.asset(
                    "assets/images/user.png",
                    color: Colors.white,
                    height: 20,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Center(
                            child: Text(
                              "Change account name",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(),
                          backgroundColor: Colors.grey.shade900,
                          content: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          actions: [
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            SizedBox(width: 50),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.deepPurple,
                                ),
                                child: Center(
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    "Change account name",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 146),
                Image.asset(
                  "assets/images/angle-small-right.png",
                  color: Colors.white,
                  height: 25,
                ),
              ],
            ),
            //2nd row
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Image.asset(
                    "assets/images/key.png",
                    color: Colors.white,
                    height: 20,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Center(
                            child: Text(
                              "Change account Password",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(),
                          backgroundColor: Colors.grey.shade900,
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 5),
                                  Text(
                                    "Enter old password",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5),
                                  Text(
                                    "Enter new password",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          actions: [
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            SizedBox(width: 50),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.deepPurple,
                                ),
                                child: Center(
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    "Change account password",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 120),
                Image.asset(
                  "assets/images/angle-small-right.png",
                  color: Colors.white,
                  height: 25,
                ),
              ],
            ),
            //3rd row
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Image.asset(
                    "assets/images/camera.png",
                    color: Colors.white,
                    height: 20,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 300,
                          width: 400,
                          color: Colors.grey.shade900,
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Change account image",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 25,
                                        right: 25,
                                      ),
                                      child: Divider(thickness: 1),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Take Picture",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Import from gallery",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Import from Google Drive",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Change account image",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 145),
                Image.asset(
                  "assets/images/angle-small-right.png",
                  color: Colors.white,
                  height: 25,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Image.asset(
                    "assets/images/logout.png",
                    color: Colors.white,
                    height: 20,
                  ),
                ),
                SizedBox(width: 22),
                GestureDetector(
                  onTap: () {},
                  child: Text("Logout", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
