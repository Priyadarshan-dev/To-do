import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskPriority extends StatefulWidget {
  final Function(int) onPrioritySelected;
  const TaskPriority({super.key, required this.onPrioritySelected});

  @override
  State<TaskPriority> createState() => _TaskPriorityState();
}

class _TaskPriorityState extends State<TaskPriority> {
  int? selectedPriority;
  String? selectedFlagItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
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
                                selectedPriority = 1;
                                selectedFlagItem = "flag.png";
                              });
                              widget.onPrioritySelected(1);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 1
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFlagItem = "flag.png";
                                selectedPriority = 2;
                              });
                              widget.onPrioritySelected(2);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 2
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFlagItem = "flag.png";
                                selectedPriority = 3;
                              });
                              widget.onPrioritySelected(3);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 3
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFlagItem = "flag.png";
                                selectedPriority = 4;
                              });
                              widget.onPrioritySelected(4);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 4
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
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
                                selectedFlagItem = "flag.png";
                                selectedPriority = 5;
                              });
                              widget.onPrioritySelected(5);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 5
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFlagItem = "flag.png";
                                selectedPriority = 6;
                              });
                              widget.onPrioritySelected(6);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 6
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFlagItem = "flag.png";
                                selectedPriority = 7;
                              });
                              widget.onPrioritySelected(7);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 7
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    "7",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFlagItem = "flag.png";
                                selectedPriority = 8;
                              });
                              widget.onPrioritySelected(8);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 8
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
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
                                selectedFlagItem = "flag.png";
                                selectedPriority = 9;
                              });
                              widget.onPrioritySelected(9);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 9
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFlagItem = "flag.png";
                                selectedPriority = 10;
                              });
                              widget.onPrioritySelected(10);
                            },
                            child: Container(
                              height: 55,
                              width: 50,
                              color:
                                  selectedPriority == 10
                                      ? Colors.deepPurple
                                      : Color(0xFF272727),
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
                                    style: TextStyle(color: Colors.white),
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
                        style: GoogleFonts.lato(color: Colors.deepPurple),
                      ),
                    ),
                    SizedBox(width: 50),
                    GestureDetector(
                      onTap: () {
                        if (selectedPriority != null) {
                          widget.onPrioritySelected(selectedPriority!);
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
                            "Save",
                            style: GoogleFonts.lato(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      child: Image.asset(
        "assets/images/flag.png",
        color: Colors.white,
        height: 20,
      ),
    );
  }
}
