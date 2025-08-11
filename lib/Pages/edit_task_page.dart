import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:to_do_task/Pages/category_screen.dart';
import 'package:to_do_task/Provider/task_provider.dart';
import 'package:to_do_task/Time/am_pm.dart';
import 'package:to_do_task/Time/hours.dart';
import 'package:to_do_task/Time/minutes.dart';

class EditTask extends StatefulWidget {
  final int taskIndex;
  final Map<String, dynamic> taskData;
  final Function(int) onPrioritySelected;
  const EditTask({
    super.key,
    required this.taskIndex,
    required this.taskData,
    required this.onPrioritySelected,
  });

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  String? selectedCategoryItem;
  String? selectedCategoryName;
  int? selectedPriority;
  String? selectedTime;
  int selectedHour = 0;
  int selectedMinute = 0;
  String selectedAmPm = "AM";
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  void saveChanges() {
    final editedTask = {
      'task': widget.taskData['task'],
      'description': widget.taskData['description'],
      'category': selectedCategoryItem ?? widget.taskData['category'],
      'categoryName': selectedCategoryName ?? widget.taskData['categoryName'],
      'priority': selectedPriority ?? widget.taskData['priority'],
      'priorityFlag': widget.taskData['priorityFlag'],
      'time': selectedTime ?? widget.taskData['time'],
    };
    Provider.of<TaskProvider>(
      context,
      listen: false,
    ).editTask(widget.taskIndex, editedTask);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder:
          (BuildContext context, TaskProvider task, Widget? child) => SafeArea(
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/images/Close.png",
                            height: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 20,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/Repeat.png",
                            height: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/dry-clean.png",
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        widget.taskData['task'] ?? '',
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      SizedBox(width: 50),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(),
                                backgroundColor: Color(0xFF363636),
                                title: Center(
                                  child: Text(
                                    "Edit Task title",
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Divider(
                                            thickness: 1,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    TextField(
                                      controller: titleController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    TextField(
                                      controller: descriptionController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(width: 4),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: GoogleFonts.lato(
                                              color: Colors.deepPurple,
                                            ),
                                          ),
                                        ),

                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['task'] =
                                                  titleController.text.trim();
                                              widget.taskData['description'] =
                                                  descriptionController.text
                                                      .trim();
                                            });
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: 48,
                                            width: 123,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color(0xFF8687E7),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Edit",
                                                style: GoogleFonts.lato(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
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
                        child: Image.asset(
                          "assets/images/Group 239.png",
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 85),
                      Text(
                        widget.taskData['description'] ?? '',
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 29, right: 10),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/timer.png",
                            height: 30,
                          ),
                        ),
                      ),
                      Text(
                        "Task Time :",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      SizedBox(width: 115),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(),
                                backgroundColor: Color(0xFF363636),
                                title: Center(
                                  child: Text(
                                    "Choose Time",
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                content: SizedBox(
                                  height: 70,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFF8687E7),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //hours
                                        Container(
                                          width: 70,
                                          child: ListWheelScrollView.useDelegate(
                                            itemExtent: 50,
                                            perspective: 0.005,
                                            diameterRatio: 1.2,
                                            physics: FixedExtentScrollPhysics(),
                                            childDelegate:
                                                ListWheelChildBuilderDelegate(
                                                  childCount: 13,
                                                  builder: (context, index) {
                                                    return MyHours(
                                                      hours: index,
                                                    );
                                                  },
                                                ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        // minutes
                                        Container(
                                          width: 70,
                                          child: ListWheelScrollView.useDelegate(
                                            itemExtent: 50,
                                            perspective: 0.005,
                                            diameterRatio: 1.2,
                                            physics: FixedExtentScrollPhysics(),
                                            childDelegate:
                                                ListWheelChildBuilderDelegate(
                                                  childCount: 60,
                                                  builder: (context, index) {
                                                    return MyMinutes(
                                                      mins: index,
                                                    );
                                                  },
                                                ),
                                          ),
                                        ),
                                        Container(
                                          width: 70,
                                          child: ListWheelScrollView.useDelegate(
                                            itemExtent: 50,
                                            perspective: 0.005,
                                            diameterRatio: 1.2,
                                            physics: FixedExtentScrollPhysics(),
                                            childDelegate:
                                                ListWheelChildBuilderDelegate(
                                                  childCount: 2,
                                                  builder: (context, index) {
                                                    if (index == 0) {
                                                      return AmPm(isItAm: true);
                                                    } else {
                                                      return AmPm(
                                                        isItAm: false,
                                                      );
                                                    }
                                                  },
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                actions: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.lato(
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedTime =
                                            "$selectedHour:$selectedMinute $selectedAmPm";
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 48,
                                      width: 133,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xFF8687E7),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Edit",
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 37,
                          width: 108,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade800,
                          ),
                          child: Center(
                            child: Text(
                              "Today At ${widget.taskData['time']}",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 10,
                              ),
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
                        padding: const EdgeInsets.only(left: 29, right: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/images/tag.png",
                            height: 30,
                          ),
                        ),
                      ),
                      Text(
                        "Task Category :",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      SizedBox(width: 80),
                      GestureDetector(
                        onTap: () {
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
                                        Expanded(
                                          child: Divider(
                                            thickness: 1,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedCategoryItem =
                                                  "grocery.png";
                                              selectedCategoryName = "Grocery";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                              selectedCategoryItem =
                                                  "briefcase.png";
                                              selectedCategoryName = "Work";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                              selectedCategoryItem =
                                                  "dumbbell-horizontal.png";
                                              selectedCategoryName = "Sport";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 20,
                                          ),
                                          child: Text(
                                            "Grocery",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 12,
                                          ),
                                          child: Text(
                                            "Work",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: Text(
                                            "Sport",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedCategoryItem =
                                                  "web-design.png";
                                              selectedCategoryName = "Design";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                              selectedCategoryItem =
                                                  "education.png";
                                              selectedCategoryName =
                                                  "University";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                              selectedCategoryItem =
                                                  "megaphone.png";
                                              selectedCategoryName = "Social";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 9,
                                          ),
                                          child: Text(
                                            "Design",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 5,
                                          ),
                                          child: Text(
                                            "University",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: Text(
                                            "Social",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedCategoryItem =
                                                  "musical-note.png";
                                              selectedCategoryName = "Music";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                              selectedCategoryItem =
                                                  "heart.png";
                                              selectedCategoryName = "Health";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                              selectedCategoryItem =
                                                  "movie.png";
                                              selectedCategoryName = "Movie";
                                            });
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                          ),
                                          child: Text(
                                            "Music",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: Text(
                                            "Health",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                          ),
                                          child: Text(
                                            "Movie",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    //4th row
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                                builder:
                                                    (context) =>
                                                        CategoryScreen(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 21),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Text(
                                            "Home",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 27),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 5,
                                          ),
                                          child: Text(
                                            "Create New",
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(width: 4),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: GoogleFonts.lato(
                                              color: Colors.deepPurple,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: 48,
                                            width: 123,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color(0xFF8687E7),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Edit",
                                                style: GoogleFonts.lato(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
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
                        child: Container(
                          height: 40,
                          width: 118,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade800,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              if (widget.taskData['category'] != null)
                                Image.asset(
                                  "assets/images/${widget.taskData['category']}",
                                  height: 20,
                                  color: Colors.white,
                                ),
                              Text(
                                widget.taskData['categoryName']?.toString() ??
                                    '',
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 29, right: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/images/flag.png",
                            height: 30,
                          ),
                        ),
                      ),
                      Text(
                        "Task Priority :",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      SizedBox(width: 140),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Center(
                                  child: Text(
                                    "Task Priority",
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(),
                                backgroundColor: Color(0xFF363636),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 1;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "1",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 2;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "2",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 3;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "3",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 4;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "4",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 5;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "5",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 6;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "6",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 7;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag-alt.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "7",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 8;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "8",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 9;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "9",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              widget.taskData['priority'] = 10;
                                              widget.taskData['priorityFlag'] =
                                                  "flag.png";
                                            });
                                          },
                                          child: Container(
                                            height: 55,
                                            width: 50,
                                            color: Color(0xFF272727),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  "assets/images/flag.png",
                                                  color: Colors.white,
                                                  height: 15,
                                                ),
                                                Text(
                                                  "10",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                actions: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.lato(
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  GestureDetector(
                                    onTap: () {
                                      if (selectedPriority != null) {
                                        widget.onPrioritySelected(
                                          selectedPriority!,
                                        );
                                      }
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 48,
                                      width: 123,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xFF8687E7),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Edit",
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },

                        child: Container(
                          height: 37,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade800,
                          ),
                          child: Center(
                            child: Text(
                              "Default",
                              style: GoogleFonts.lato(color: Colors.white),
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
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/hierarchy.png",
                            height: 30,
                          ),
                        ),
                      ),
                      Text(
                        "Sub-Task :",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      SizedBox(width: 130),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 38,
                          width: 104,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade800,
                          ),
                          child: Center(
                            child: Text(
                              "Add Sub-Task",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 13,
                              ),
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
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(),
                                  backgroundColor: Color(0xFF363636),
                                  title: Center(
                                    child: Text(
                                      "Delete Task",
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Divider(
                                              thickness: 1,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "Are you sure you want to delete this task?",
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Task: ${widget.taskData['task']}",
                                        style: GoogleFonts.lato(
                                          color: Colors.white70,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(width: 10),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Cancel",
                                              style: GoogleFonts.lato(
                                                color: Colors.deepPurple,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Provider.of<TaskProvider>(
                                                context,
                                                listen: false,
                                              ).deleteTask(widget.taskIndex);
                                              Navigator.pop(
                                                context,
                                              ); // Close dialog
                                              Navigator.pop(
                                                context,
                                              ); // Close edit screen
                                            },
                                            child: Container(
                                              height: 48,
                                              width: 123,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Color(0xFF8687E7),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Delete",
                                                  style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
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
                          child: Image.asset(
                            "assets/images/trash.png",
                            height: 30,
                          ),
                        ),
                      ),
                      Text(
                        "Delete Task",
                        style: GoogleFonts.lato(color: Colors.red),
                      ),
                      SizedBox(width: 100),
                    ],
                  ),
                  SizedBox(height: 160),
                  GestureDetector(
                    onTap: saveChanges,
                    child: Container(
                      height: 48,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF8687E7),
                      ),
                      child: Center(
                        child: Text(
                          "Edit Task",
                          style: GoogleFonts.lato(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
