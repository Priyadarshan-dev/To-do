import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_task/Time/am_pm.dart';
import 'package:to_do_task/Time/hours.dart';
import 'package:to_do_task/Time/minutes.dart';

class Time extends StatefulWidget {
  final Function(String) onTimeSelected;
  const Time({super.key, required this.onTimeSelected});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  int? selectedHour;
  int? selectedMinute;
  bool? isAm;
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
              backgroundColor: Color(0xFF363636),
              title: Center(
                child: Text(
                  "Choose Time",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 18),
                ),
              ),
              content: SizedBox(
                height: 70,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                   
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
                              final isSelected = index == selectedHour;
                              return GestureDetector(
                                onTap:
                                    () => setState(() => selectedHour = index),
                                child: Container(
                                  color:
                                      isSelected
                                          ? Colors.deepPurple
                                          : Colors.transparent,
                                  child: MyHours(hours: index),
                                ),
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
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 60,
                            builder: (context, index) {
                              final isSelected = index == selectedMinute;
                              return GestureDetector(
                                onTap:
                                    () =>
                                        setState(() => selectedMinute = index),
                                child: Container(
                                  color:
                                      isSelected
                                          ? Colors.deepPurple
                                          : Colors.transparent,
                                  child: MyMinutes(mins: index),
                                ),
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
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 2,
                            builder: (context, index) {
                              final isAmSelected = (index == 0) == isAm;
                              return GestureDetector(
                                onTap: () => setState(() => isAm = index == 0),
                                child: Container(
                                  color:
                                      isAmSelected
                                          ? Colors.deepPurple
                                          : Colors.transparent,
                                  child:
                                      index == 0
                                          ? AmPm(isItAm: true)
                                          : AmPm(isItAm: false),
                                ),
                              );
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
                    style: GoogleFonts.lato(color: Colors.deepPurple),
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    if (selectedHour != null &&
                        selectedMinute != null &&
                        isAm != null) {
                      final timeStr = formatTime(
                        selectedHour,
                        selectedMinute,
                        isAm,
                      );
                      setState(() => selectedTime = timeStr);
                      widget.onTimeSelected(timeStr);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please select hour, minute and AM/PM'),
                        ),
                      );
                    }
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
      child: Image.asset(
        "assets/images/timer.png",
        color: Colors.white,
        height: 20,
      ),
    );
  }
}

String formatTime(int? hour, int? minute, bool? isAm) {
  if (hour == null || minute == null || isAm == null) return '';

  final displayHour = hour == 0 ? 12 : hour;
  final period = isAm ? 'AM' : 'PM';
  return '$displayHour:${minute.toString().padLeft(2, '0')} $period';
}
