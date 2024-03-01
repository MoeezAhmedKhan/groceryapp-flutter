import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:grocery_app/category.dart';
import 'package:grocery_app/home_screen.dart';
import 'package:grocery_app/login.dart';
import 'package:grocery_app/more.dart';
import 'package:grocery_app/mybag.dart';
import 'package:grocery_app/product.dart';
import 'package:grocery_app/product_detail.dart';
import 'package:grocery_app/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xff87dd39, {
          50: Color(0xffe0f7d6),
          100: Color(0xffb1e39a),
          200: Color(0xff87dd39),
          300: Color(0xff69d626),
          400: Color(0xff4cc915),
          500: Color(0xff35b909),
          600: Color(0xff2da308),
          700: Color(0xff248c07),
          800: Color(0xff1b7306),
          900: Color(0xff115506),
        }),
      ),
      home: LoginScreen(),
    );
  }
}
