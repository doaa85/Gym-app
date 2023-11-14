import 'package:flutter/material.dart';
import 'package:gym_app/pages/register_page.dart';
import 'package:gym_app/widgets/custom_button.dart';
import 'package:gym_app/widgets/custom_text_field.dart';

// ignore: camel_case_types, must_be_immutable
class Login_page extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();
  static String id = 'LoginPage';

  Login_page({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffb30000),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset('lib/images/Gym_image1.jpeg'),
              const Text(
                'LIONS GYM',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
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
                onChange: (data) {},
                hintText: "Enter your email",
                labelText: "Email",
                ico: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                validate: (data) {
                  if (data!.isEmpty) {
                    return "This field is required!";
                  } else if (data.length < 8) {
                    return "Password incorrect! It cannot be less than 8 characters";
                  }
                },
                onChange: (data) {},
                hintText: "Enter your password",
                labelText: "Password",
                hidden: true,
                ico: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'don\'t have an account?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                    child: const Text(
                      'Register',
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
