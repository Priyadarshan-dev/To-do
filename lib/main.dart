import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_task/Provider/task_provider.dart';
import 'package:to_do_task/Screens/on_boarding_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => TaskProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
