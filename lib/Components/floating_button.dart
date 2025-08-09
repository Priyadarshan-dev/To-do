import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_task/Functionality/task_priority.dart';
import 'package:to_do_task/Functionality/time.dart';
import 'package:to_do_task/Pages/category_screen.dart';

import 'package:to_do_task/Provider/task_provider.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  final TextEditingController taskController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String? selectedCategoryItem;

  // Category Screen
  void categoryScreen() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 600,
          width: 400,
          color: Colors.grey.shade900,
          child: SingleChildScrollView(
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
                // 1st row
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Grocery";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Grocery"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            "assets/images/grocery.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Work";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Work"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/briefcase.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Sport";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Work"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/dumbbell-horizontal.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "Grocery",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        "Work",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Sport",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                //2nd row
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Design";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Design"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/web-design.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "University";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "University"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/education.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Social";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Social"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/megaphone.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "Design",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        "University",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Social",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                //3rd row
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Music";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Music"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/musical-note.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Health";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Health"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/heart.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Movie";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Movie"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/movie.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "Music",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        "Health",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Movie",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                //4th row
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 39),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryItem = "Home";
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              selectedCategoryItem == "Home"
                                  ? Colors.deepPurple
                                  : Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/home.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 39),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/plus.png",
                            color: Colors.white,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    SizedBox(width: 60),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 50),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        "Create New",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple,
                    ),
                    height: 40,
                    width: 380,
                    child: Center(child: Text("Add Category")),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }

  // Adding task
  void addTask() {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Add Task",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: taskController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Descripiton",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: descriptionController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15),
                  // Time
                  Time(),
                  SizedBox(width: 30),
                  // Category
                  GestureDetector(
                    onTap: categoryScreen,
                    child: Image.asset(
                      "assets/images/tags.png",
                      color: Colors.white,
                      height: 20,
                    ),
                  ),
                  // Task Priority
                  SizedBox(width: 30),
                  TaskPriority(),
                  SizedBox(width: 222),
                  GestureDetector(
                    onTap: () {
                      final todo = Provider.of<TaskProvider>(
                        context,
                        listen: false,
                      );
                      todo.addTask(
                        taskController.text,
                        descriptionController.text,
                      );
                      taskController.clear();
                      descriptionController.clear();
                    },
                    child: Image.asset(
                      "assets/images/paper-plane-top.png",
                      color: Colors.deepPurple,
                      height: 20,
                    ),
                  ),
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
    return Container(
      child: FloatingActionButton(
        onPressed: addTask,
        backgroundColor: Colors.deepPurple,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
