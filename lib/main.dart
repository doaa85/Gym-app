import 'package:flutter/material.dart';
import 'package:gym_app/pages/login_page.dart';
import 'package:gym_app/pages/register_page.dart';
import 'package:gym_app/pages/start_page.dart';
// ignore: unused_import
import 'dart:io';

void main() {
  runApp(const Gym_app());
}

// ignore: camel_case_types
class Gym_app extends StatelessWidget {
  const Gym_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'StartPage': (context) => const Start_page(),
        'LoginPage': (context) => Login_page(),
        'RegisterPage': (context) => const RegisterPage()
      },
      initialRoute: 'StartPage',
    );
  }
}
