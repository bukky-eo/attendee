import 'package:attendee/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _registerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: isWeb ? screenWidth / 4 : screenWidth / 1.2,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'S I G N U P',
                        style:
                            TextStyle(fontSize: 25, color: Color(0xff38AD57)),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      InputField(
                          hintText: 'Reg.No', controller: _registerController),
                      const SizedBox(
                        height: 25,
                      ),
                      InputField(
                          hintText: 'E-mail', controller: _emailController),
                      const SizedBox(
                        height: 25,
                      ),
                      InputField(
                          hintText: 'Password',
                          controller: _passwordController),
                      const SizedBox(
                        height: 25,
                      ),
                      LinearButton(
                        title: 'Signup',
                        onTap: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Color(0xff38AD57)),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
