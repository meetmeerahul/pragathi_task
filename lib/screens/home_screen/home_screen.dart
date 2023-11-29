import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pragathi_task/screens/home_screen/widgets/crazy_deals_horizontal.dart';
import 'package:pragathi_task/screens/home_screen/widgets/horizontal_scroll.dart';
import 'package:pragathi_task/screens/home_screen/widgets/near_by_store.dart';
import 'package:pragathi_task/screens/home_screen/widgets/sub_heading_with_see_all.dart';
import 'package:pragathi_task/screens/home_screen/widgets/trending_grid.dart';

import 'widgets/heading.dart';
import 'widgets/refer_and_earn.dart';
import 'widgets/services_grid.dart';
import 'widgets/top_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(
                FontAwesomeIcons.locationPin,
                color: Colors.green,
              ),
              Text("ABCD, New Delhi"),
              FaIcon(
                FontAwesomeIcons.arrowDown,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopSearchBar(),
            const Heading(matter: "What do you like to do today ?"),
            const SizedBox(
              height: 200, // Specify a fixed height for ServiceGrid widgets
              child: ServiceGrid(), // Your first ServiceGrid
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "More",
                    style: TextStyle(color: Colors.green),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            const Heading(matter: "Top pcs for you"),
            const HorizontalList(),
            const SubHeaddinWithSeaAll(matter: "Trending"),
            const TrendingGrid(),
            const SubHeaddinWithSeaAll(matter: "Crazy Deals"),
            const CrazyDealsHorizontal(),
            const ReferAndEarn(),
            const SubHeaddinWithSeaAll(matter: "Nearby Stores"),
            const NearByStore(),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Container(
                height: 40,
                width: 250,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "View All Stores",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
