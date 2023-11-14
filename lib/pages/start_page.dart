import 'package:flutter/material.dart';
import 'package:gym_app/pages/login_page.dart';
// ignore: unused_import
import 'package:gym_app/widgets/custom_button.dart';

// ignore: unused_import
import 'package:gym_app/widgets/custom_text_field.dart';

import '../widgets/custom_Elevated_Button.dart';

// ignore: camel_case_types
class Start_page extends StatelessWidget {
  const Start_page({Key? key}) : super(key: key);

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffb30000),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/images/Gym_image1.jpeg'),
          const Text(
            'LIONS GYM',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const Text(
            'Build your Body',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomElevatedButton(
            buttonText: "Start",
            height: 35,
            width: 150,
            buttonColor: Colors.white,
            onTap: () {
              Navigator.pushNamed(context, Login_page.id);
            },
            child: const Text(
              'Start',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
