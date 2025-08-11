import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50),
          Text(
            "Manage your tasks",
            style: GoogleFonts.lato(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "You can easily manage all of your daily\n                tasks in DoMe for free",
            style: GoogleFonts.lato(color: Colors.white),
          ),
          SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
      
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    "BACK",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: Color(0x70FFFFFF),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                 
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Container(
                    height: 48,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF8875FF),
                    ),
                    child: Center(
                      child: Text(
                        "NEXT",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.white,
                        ),
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
  }
}
