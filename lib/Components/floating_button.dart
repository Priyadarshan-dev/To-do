import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  String? selectedCategoryName;
  int? selectedPriority;
  String? selectedFlagItem;
  String? selectedTime;

  // Category Screen
  void categoryScreen() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(),
          backgroundColor: Color(0xFF363636),
          title: Center(
            child: Text(
              "Choose Category",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(child: Divider(thickness: 1, color: Colors.white)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryItem = "grocery.png";
                        selectedCategoryName = "Grocery";
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFCCFF80),
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
                        selectedCategoryItem = "briefcase.png";
                        selectedCategoryName = "Work";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFF9680),
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
                        selectedCategoryItem = "dumbbell-horizontal.png";
                        selectedCategoryName = "Sport";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF80FFFF),
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
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "Work",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "Sport",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryItem = "web-design.png";
                        selectedCategoryName = "Design";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF80FFD9),
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
                        selectedCategoryItem = "education.png";
                        selectedCategoryName = "University";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF809CFF),
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
                        selectedCategoryItem = "megaphone.png";
                        selectedCategoryName = "Social";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFF80EB),
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
                    padding: const EdgeInsets.only(left: 9),
                    child: Text(
                      "Design",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      "University",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "Social",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryItem = "musical-note.png";
                        selectedCategoryName = "Music";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFC80FF),
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
                        selectedCategoryItem = "heart.png";
                        selectedCategoryName = "Health";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF80FFA3),
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
                        selectedCategoryItem = "movie.png";
                        selectedCategoryName = "Movie";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF80D1FF),
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
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Music",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Health",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Movie",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                ],
              ),
              //4th row
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryItem = "home.png";
                        selectedCategoryName = "Home";
                      });
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFFCC80),
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
                  SizedBox(width: 18),
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
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF80FFD1),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 21),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Home",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 27),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      "Create New",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF8687E7),
                    ),
                    height: 48,
                    width: 289,
                    child: Center(
                      child: Text(
                        "Add Category",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
          color: Color(0xFF363636),
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
                      style: GoogleFonts.lato(color: Colors.white),
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
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: descriptionController,
                  style: GoogleFonts.lato(color: Colors.white),
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15),
                  // Time
                  Time(
                    onTimeSelected: (timeStr) {
                      setState(() {
                        selectedTime = timeStr;
                      });
                    },
                  ),
                  SizedBox(width: 30),
                  // Category
                  GestureDetector(
                    onTap: categoryScreen,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/tag.png",
                          color: Colors.white,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  // Task Priority
                  SizedBox(width: 30),
                  TaskPriority(
                    onPrioritySelected: (priority) {
                      setState(() => selectedPriority = priority);
                    },
                  ),
                  SizedBox(width: 220),
                  GestureDetector(
                    onTap: () {
                      final todo = Provider.of<TaskProvider>(
                        context,
                        listen: false,
                      );
                      todo.addTask(
                        taskController.text,
                        descriptionController.text,
                        selectedCategoryItem,
                        selectedCategoryName,
                        selectedPriority,
                        selectedFlagItem,
                        selectedTime,
                      );
                      taskController.clear();
                      descriptionController.clear();
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/paper-plane-top.png",
                      color: Color(0xFF8687E7),
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
