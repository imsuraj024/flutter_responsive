import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  final Widget mobile;
  final Widget desktop;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 650;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}