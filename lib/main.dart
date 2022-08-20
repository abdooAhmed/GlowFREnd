import 'package:flutter/material.dart';
import 'package:glow/Doctor.dart';
import 'package:glow/NutriScreen.dart';
import 'package:glow/Registration.dart';
import 'package:glow/SalesForm.dart';
import 'package:glow/VisitorSales.dart';
import 'package:glow/home_screen.dart';
import 'package:glow/login_screen.dart';


void main() {
  runApp(MyApp());



}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    ) ;

  }

}