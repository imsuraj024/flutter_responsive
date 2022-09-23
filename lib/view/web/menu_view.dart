import 'package:flutter/material.dart';
import 'package:flutter_wms/utils/app_colors.dart';

import '../../utils/ui_helper.dart';
import 'model/menu.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key, this.expandFlex = 2, this.isTab = false})
      : super(key: key);

  final int expandFlex;
  final bool isTab;

  @override
  Widget build(BuildContext context) {
    final menus = Menu.getMenus();

    return Expanded(
      flex: expandFlex,
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            left: isTab ? 20.0 : 40.0,
            top: 40.0,
            right: isTab ? 20.0 : 40.0,
            bottom: 20.0),
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: List.generate(
                menus.length,
                    (index) => _MenuItem(
                  menu: menus[index],
                  isTab: isTab,
                ),
              ),
            ),
            const Spacer(),
            isTab
                ? IconButton(
              icon: const Icon(Icons.exit_to_app),
              iconSize: 25.0,
              onPressed: () {},
            )
                : FractionallySizedBox(
              widthFactor: 1,
              child: SizedBox(
                height: 50.0,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.exit_to_app),
                  label: const Text('Logout'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    onPrimary: mainOrange,
                    side: BorderSide(width: 2.0, color: mainOrange!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatefulWidget {
  const _MenuItem({Key? key, required this.menu, this.isTab = false})
      : super(key: key);

  final Menu menu;
  final bool isTab;

  @override
  __MenuItemState createState() => __MenuItemState();
}

class __MenuItemState extends State<_MenuItem> {
  bool isHovered = false;
  bool get isTab => widget.isTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin:
      isTab ? EdgeInsets.zero : const EdgeInsets.symmetric(vertical: 5.0),
      padding:
      EdgeInsets.symmetric(vertical: 5.0, horizontal: isTab ? 0.0 : 10.0),
      child: InkWell(
        onTap: () {
          showAlert(context, widget.menu.title);
        },
        onHover: (value) {
          if (!isTab) {
            setState(() {
              isHovered = value;
            });
          }
        },
        child: Container(
          decoration: isHovered
              ? BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(30.0),
          )
              : null,
          padding: isTab
              ? const EdgeInsets.symmetric(vertical: 10.0)
              : const EdgeInsets.only(
              left: 15.0, top: 10.0, right: 25.0, bottom: 10.0),
          child: isTab
              ? IconButton(
            icon: Icon(widget.menu.icon,
                color: isHovered ? mainOrange : Colors.black),
            iconSize: 30.0,
            onPressed: () {},
          )
              : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(widget.menu.icon,
                  color: isHovered ? mainOrange : Colors.black,
                  size: 30.0),
              UIHelper.horizontalSpaceMedium(),
              Text(
                widget.menu.title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: isHovered ? mainOrange : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showAlert(BuildContext context, String title, ) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(title),
      ));
}