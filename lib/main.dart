import 'package:attendee/responsive/mobile_screen.dart';
import 'package:attendee/responsive/responsive.dart';
import 'package:attendee/responsive/web_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Attendee());
}

class Attendee extends StatelessWidget {
  const Attendee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          Responsive(mobileScreen: MobileScreen(), desktopScreen: WebScreen()),
    );
  }
}
