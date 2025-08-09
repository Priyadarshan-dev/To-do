import 'package:flutter/material.dart';

class EditTask extends StatelessWidget {
  const EditTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: Icon(Icons.home, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: Icon(Icons.switch_account, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Icon(Icons.circle_rounded, color: Colors.white),
                ),
                Text(
                  "Do Math Homework",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 70),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.edit, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 85),
                Text(
                  "Do chapter 2 to 5 for next week",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 33, right: 10),
                  child: Icon(Icons.lock_clock, color: Colors.white),
                ),
                Text("Task Time :", style: TextStyle(color: Colors.white)),
                SizedBox(width: 100),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade800,
                    ),
                    child: Center(
                      child: Text(
                        "Today At 16:45",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 33, right: 10),
                  child: Icon(Icons.lock_clock, color: Colors.white),
                ),
                Text("Task Category :", style: TextStyle(color: Colors.white)),
                SizedBox(width: 55),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade800,
                    ),
                    child: Center(
                      child: Text(
                        "University",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 33, right: 10),
                  child: Icon(Icons.lock_clock, color: Colors.white),
                ),
                Text("Task Priority :", style: TextStyle(color: Colors.white)),
                SizedBox(width: 114),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade800,
                    ),
                    child: Center(
                      child: Text(
                        "Default",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 33, right: 10),
                  child: Icon(Icons.lock_clock, color: Colors.white),
                ),
                Text("Sub-Task :", style: TextStyle(color: Colors.white)),
                SizedBox(width: 105),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade800,
                    ),
                    child: Center(
                      child: Text(
                        "Add Sub-Task",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 33, right: 10),
                  child: Icon(Icons.lock_clock, color: Colors.white),
                ),
                Text("Delete Task", style: TextStyle(color: Colors.red)),
                SizedBox(width: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
