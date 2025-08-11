import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_task/Components/text_form.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Color? selectedColor;
  final List<Color> circleColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.cyan,
    Colors.teal,
    Colors.pink,
    Colors.amber,
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 25),
                  child: Text(
                    "Create New Category",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    "Category name:",
                    style: GoogleFonts.lato(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            TextForm(hintText: "Category name", obscureText: false),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    "Category icon:",
                    style: GoogleFonts.lato(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900,
                      ),
                      height: 50,
                      width: 200,
                      child: Center(
                        child: Text(
                          "Choose icon from library",
                          style: GoogleFonts.lato(color: Colors.white),
                        ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 10),
                  child: Text(
                    "Category color:",
                    style: GoogleFonts.lato(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 12),
                  for (int i = 0; i < 10; i++)
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedColor = circleColors[i];
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: circleColors[i],
                              ),
                            ),
                            if (selectedColor == circleColors[i])
                              Icon(Icons.check, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 320),
            Row(
              children: [
                SizedBox(width: 80),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.lato(color: Colors.deepPurple),
                  ),
                ),
                SizedBox(width: 100),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 48,
                    width: 158,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF8687E7),
                    ),
                    child: Center(
                      child: Text(
                        "Create Category",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
