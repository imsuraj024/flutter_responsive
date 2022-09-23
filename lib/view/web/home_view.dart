import 'package:flutter/material.dart';
import 'package:flutter_wms/view/web/master_setup_view.dart';
import 'package:flutter_wms/widgets/custom_divider_view.dart';

import '../../utils/ui_helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, this.expandFlex = 4}) : super(key: key);

  final int expandFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expandFlex,
      child: Container(
        padding: const EdgeInsets.only(top: 0, bottom: 20.0),
        color: Colors.grey[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Search(),
            _Body(),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //OfferBannerView(),
            MasterSetupView(),
            const CustomDividerView(),
            //InTheSpotlightView(),
            const CustomDividerView(),
            //PopularCategoriesView(),
            const CustomDividerView(),
            //const SwiggySafetyBannerView(),
            //BestInSafetyViews(),
            const CustomDividerView(),
            //TopOffersViews(),
            const CustomDividerView(),
            //const FoodGroceriesAvailabilityView(),
            const CustomDividerView(),
            /*RestaurantVerticalListView(
              title: 'Popular Restaurants',
              restaurants: SpotlightBestTopFood.getPopularAllRestaurants(),
            ),*/
            const CustomDividerView(),
            /*RestaurantVerticalListView(
              title: 'All Restaurants Nearby',
              restaurants: SpotlightBestTopFood.getPopularAllRestaurants(),
              isAllRestaurantNearby: true,
            ),
            const SeeAllRestaurantBtn(),
            const LiveForFoodView()*/
          ],
        ),
      ),
    );
  }
}

class _Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: const Offset(2.0, 2.0),
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.search_outlined),
          UIHelper.horizontalSpaceMedium(),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Track your order',
              ),
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.grey[700],
              ),
            ),
          ),
          UIHelper.horizontalSpaceMedium(),
        ],
      ),
    );
  }
}