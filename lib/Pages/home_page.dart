import 'package:flutter/material.dart';
import 'package:to_do_task/Components/floating_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void categoryScreen() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 600,
          width: 400,
          color: Colors.grey.shade900,
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Choose Category",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(thickness: 1, color: Colors.white),
                    ),
                  ),
                ],
              ),
              // Expanded(
              //   child: GridView.builder(
              //     itemCount: 11,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3,
              //       crossAxisSpacing: 10,
              //       mainAxisSpacing: 10
              //     ),
              //     itemBuilder: (context, index) {
              //       return Container(

              //         color: Colors.deepPurple,
              //         child: Center(child: Text("Hi")),
              //       );
              //     },
              //   ),
              // ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 80, width: 80, color: Colors.blue),
                  Container(height: 80, width: 80, color: Colors.blue),
                  Container(height: 80, width: 80, color: Colors.blue),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 80, width: 80, color: Colors.blue),
                  Container(height: 80, width: 80, color: Colors.blue),
                  Container(height: 80, width: 80, color: Colors.blue),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 80, width: 80, color: Colors.blue),
                  Container(height: 80, width: 80, color: Colors.blue),
                  Container(height: 80, width: 80, color: Colors.blue),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 80, width: 80, color: Colors.blue),
                  Container(height: 80, width: 80, color: Colors.blue),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: IconButton(
                    onPressed: categoryScreen,
                    icon: Icon(Icons.category, color: Colors.white),
                  ),
                ),
                Text(
                  "Index",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              "What do you want to do today?",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              "Tap + to add your tasks",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
