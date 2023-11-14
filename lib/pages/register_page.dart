import 'package:flutter/material.dart';

import 'package:gym_app/widgets/custom_button.dart';

import 'package:gym_app/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  static String id = 'RegisterPage';

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  String? email, password, confirmPassword;

  bool isLoading = false, hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffb30000),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/images/Gym_image1.jpeg'),
              const Text(
                'LIONS GYM',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              CustomTextField(
                  validate: (data) {
                    if (data!.isEmpty) return "This field is required!";
                  },
                  onChange: (data) {
                    email = data;
                  },
                  hintText: "Enter your email",
                  labelText: "Email",
                  ico: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hidden: hidden,
                  validate: (data) {
                    if (data!.isEmpty) {
                      return "This field is required!";
                    } else if (data.length < 8) {
                      return "Password length should be at least 8 characters.";
                    }
                  },
                  onChange: (data) {
                    password = data;
                  },
                  hintText: "Enter your password",
                  labelText: "Password",
                  ico: IconButton(
                    onPressed: () {
                      setState(() {
                        hidden = !hidden;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hidden: hidden,
                  validate: (data) {
                    if (data!.isEmpty) {
                      return "This field is required!";
                    } else if (data.length < 8) {
                      return "Password length should be at least 8 characters.";
                    }
                  },
                  onChange: (data) {
                    confirmPassword = data;
                  },
                  hintText: "Confirm password",
                  labelText: "Confirm Password",
                  ico: IconButton(
                    onPressed: () {
                      setState(() {
                        hidden = !hidden;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                  )),
              CustomButton(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have account?',
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
