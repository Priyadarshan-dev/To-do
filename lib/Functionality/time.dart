import 'package:flutter/material.dart';
import 'package:to_do_task/Time/am_pm.dart';
import 'package:to_do_task/Time/hours.dart';
import 'package:to_do_task/Time/minutes.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  String? selectedTime;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(),
              backgroundColor: Colors.grey.shade800,
              title: Center(
                child: Text(
                  "Choose Time",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              content: SizedBox(
                height: 70,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.deepPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //hours
                      Container(
                        width: 70,
                        child: ListWheelScrollView.useDelegate(
                          itemExtent: 50,
                          perspective: 0.005,
                          diameterRatio: 1.2,
                          physics: FixedExtentScrollPhysics(),
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 13,
                            builder: (context, index) {
                              return MyHours(hours: index);
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
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 60,
                            builder: (context, index) {
                              return MyMinutes(mins: index);
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
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 2,
                            builder: (context, index) {
                              if (index == 0) {
                                return AmPm(isItAm: true);
                              } else {
                                return AmPm(isItAm: false);
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
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
                SizedBox(width: 50),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepPurple,
                    ),
                    child: Center(
                      child: Text(
                        "Save",
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
      child: Image.asset(
        "assets/images/clock-three.png",
        color: Colors.white,
        height: 20,
      ),
    );
  }
}
