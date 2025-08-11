import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_task/Authentication/login_screen.dart';
import 'package:to_do_task/Components/bottom_nav_bar.dart';
import 'package:to_do_task/Components/text_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 15,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/angle-left.png",
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Register",
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: Text(
                    "Username",
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
            TextForm(hintText: 'Enter your Username', obscureText: false),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: Text(
                    "Password",
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
            TextForm(hintText: '. . . . . . . . . .', obscureText: true),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: Text(
                    "Confirm Password",
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
            TextForm(hintText: '. . . . . . . . . .', obscureText: true),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavBar()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 48,
                  width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF8687E7),
                  ),
                  child: Center(
                    child: Text(
                      "Register",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 4),
                    child: Divider(thickness: 1, color: Colors.white),
                  ),
                ),
                Text("or", style: GoogleFonts.lato(color: Colors.white)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25, left: 4),
                    child: Divider(thickness: 1, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 48,
                  width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.deepPurple, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/search.png", height: 20),
                      SizedBox(width: 10),
                      Text(
                        "Login with Google",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 48,
                  width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.deepPurple, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/apple.png",
                        height: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Login with Apple",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.lato(color: Colors.grey.shade400),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.lato(color: Colors.white),
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
