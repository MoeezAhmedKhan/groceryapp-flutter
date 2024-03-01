import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/login.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  var signup_name = TextEditingController();
  var signup_email = TextEditingController();
  var signup_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FC),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset("assets/signup-image.png"),
            ),
            Text(
              "Signup",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: const Color(0xff37474F),
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "Fresh finds and grocery delights.",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color(0xff37474F),
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: signup_name,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: "Enter Name",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
                filled: true,
                fillColor: Color(0xffF0F1F2),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff87dd39),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: signup_email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: Color(0xffF0F1F2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff87dd39),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: signup_password,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  fillColor: Color(0xffF0F1F2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff87dd39),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Icon(Icons.password_outlined)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: const MaterialStatePropertyAll(
                    BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  int length = 12;
                  bool includeNumbers = true;
                  bool includeLetters = true;
                  bool includeSpecialCharacters = true;

                  String letters = "QWETUIOPASDFGHJKLZXCVBNM";
                  String numbers = "0123456789";
                  String specialChars = "~!@#%^&*(|_-+*/?<:>[{}]);,";

                  String charac = "";
                  if (includeNumbers) {
                    charac = charac + numbers;
                  }
                  if (includeLetters) {
                    charac = charac + letters;
                  }
                  if (includeSpecialCharacters) {
                    charac = charac + specialChars;
                  }

                  String password = "";
                  var random = Random();
                  for (int i = 1; i <= length; i++) {
                    int index = random.nextInt(charac.length);
                    password += charac[index];
                  }

                  signup_password.text = password;
                },
                child: Text(
                  "Generate Password",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff87dd39)),
                  shape: const MaterialStatePropertyAll(
                    BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  checkValidation(context);
                },
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )),
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void checkValidation(BuildContext context) {
    if (signup_name.text == "" ||
        signup_email.text == "" ||
        signup_password.text == "") {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          backgroundColor: Colors.black,
          shadowColor: Colors.white,
          title: Text(
            "Alert",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          content: Text(
            "Please fill all fields",
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Container(
                padding: const EdgeInsets.all(14),
                child: Text(
                  "Okay",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(signup_email: signup_email.text, signup_password: signup_password.text),
        ),
      );
    }
  }
}
