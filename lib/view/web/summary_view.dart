import 'package:flutter/material.dart';

import '../../utils/ui_helper.dart';

class SummaryView extends StatelessWidget {
  const SummaryView({Key? key, this.isTab = false}) : super(key: key);

  final bool isTab;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            left: isTab ? 20.0 : 40.0,
            top: 40.0,
            right: isTab ? 20.0 : 40.0,
            bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _UserHeader(),
            //_MyOrdersList(),
            //_Checkout(),
          ],
        ),
      ),
    );
  }
}

class _UserHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.grey[100],
                    ),
                    height: 50.0,
                    width: 50.0,
                    child: const Icon(
                      Icons.notifications_outlined,
                    ),
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  const ClipOval(
                    child: Icon(
                      Icons.verified_user,
                    ),
                    // child: Image.asset(
                    //   'assets/images/user.jpg',
                    //   height: 50.0,
                    //   width: 50.0,
                    //   fit: BoxFit.fill,
                    // ),
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vinod',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                      UIHelper.verticalSpaceExtraSmall(),
                      Text(
                        'User',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.grey, fontSize: 13.0),
                      ),
                    ],
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  const Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}