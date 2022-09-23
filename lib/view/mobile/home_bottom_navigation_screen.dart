import 'package:flutter/material.dart';
import 'package:flutter_wms/view/mobile/search/search_screen.dart';
import '../../utils/app_colors.dart';

class HomeBottomNavigationScreen extends StatefulWidget {
  const HomeBottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _HomeBottomNavigationScreenState createState() =>
      _HomeBottomNavigationScreenState();
}

class _HomeBottomNavigationScreenState
    extends State<HomeBottomNavigationScreen> {
  final List<Widget> _children = [
    const SearchScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final labelTextStyle =
    Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 8.0);
    return Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 50.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: darkOrange,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedIndex,
          selectedLabelStyle: labelTextStyle,
          unselectedLabelStyle: labelTextStyle,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              label: 'Timeline',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
          ],
        ),
      ),
    );
  }
}