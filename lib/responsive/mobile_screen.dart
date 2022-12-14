import 'package:attendee/helpers/widgets.dart';
import 'package:attendee/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
