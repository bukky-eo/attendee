import 'package:attendee/helpers/constants.dart';
import 'package:attendee/helpers/widgets.dart';
import 'package:attendee/screens/auth/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                        'L O G I N',
                        style:
                            TextStyle(fontSize: 25, color: Color(0xff38AD57)),
                      ),
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
                        title: 'Login',
                        onTap: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
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
