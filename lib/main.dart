import 'package:flutter/material.dart';
import 'package:flutter_wms/shared/app_theme.dart';
import 'package:flutter_wms/view/mobile/mobile_screen.dart';
import 'package:flutter_wms/view/web/desktop_screen.dart';
import 'package:flutter_wms/widgets/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      home: const Responsive(
        mobile: MobileScreen(),
        desktop: DesktopScreen(),
      ),
    );
  }
}
