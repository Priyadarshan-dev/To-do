import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:to_do_task/Components/floating_button.dart';
import 'package:to_do_task/Pages/edit_task_page.dart';
import 'package:to_do_task/Provider/task_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder:
          (BuildContext context, task, Widget? child) => Scaffold(
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
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/menu.png",
                            color: Colors.white,
                            height: 40,
                          ),
                        ),
                      ),
                      Text(
                        "Index",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18,
                        ),
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
                  SizedBox(height: 40),
                  if (task.tasks.isEmpty) ...[
                    Image.asset(
                      "assets/images/todo.png",
                      height: 250,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "What do you want to do today?",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Tap + to add your tasks",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ] else ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: searchController,
                        style: GoogleFonts.lato(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Search tasks...",
                          hintStyle: GoogleFonts.lato(color: Colors.white54),
                          filled: true,
                          fillColor: Colors.grey.shade900,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.search, color: Colors.white54),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20),
                        Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade800,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Today",
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                              Icon(Icons.arrow_downward, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        itemCount: task.tasks.length,
                        itemBuilder: (context, index) {
                          final taskData = task.tasks[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Expanded(
                              child: Container(
                                height: 80,
                                width: 280,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade800,
                                ),
                                child: ListTile(
                                  title: Text(
                                    taskData['task'] ?? '',
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle:
                                      taskData['time'] != null
                                          ? Text(
                                            taskData['time']!,
                                            style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 12,
                                            ),
                                          )
                                          : null,
                                  trailing: Container(
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        if (taskData['category'] != null)
                                          Image.asset(
                                            "assets/images/${taskData['category']}",
                                            color: Colors.white,
                                            height: 20,
                                          ),
                                        SizedBox(width: 4),
                                        Text(
                                          taskData['categoryName'] ?? '',
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),

                                        if (taskData['priority'] != null)
                                          Image.asset(
                                            "assets/images/flag.png",
                                            height: 20,
                                            color: Colors.white,
                                          ),
                                        SizedBox(width: 4),
                                        Text(
                                          "${taskData['priority']}",
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  leading: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => EditTask(
                                                taskIndex: index,
                                                taskData: task.tasks[index],
                                                onPrioritySelected: (index) {},
                                              ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      "assets/images/dry-clean.png",
                                      height: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
    );
  }
}
