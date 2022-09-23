import 'package:flutter/material.dart';
import 'package:flutter_wms/view/web/menu_view.dart';
import 'package:flutter_wms/view/web/summary_view.dart';

import 'home_view.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MenuView(),
          HomeView(),
          SummaryView(),
        ],
      ),
    );
  }

}