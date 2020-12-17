import 'package:flutter/material.dart';
import 'package:testapp/common/constants/size_constants.dart';
import 'package:testapp/presentation/journeys/banner_with_search_box/banner_with_search_box_widget.dart';
import 'package:testapp/presentation/journeys/home/bottom_bar/bottom_app_bar_wiget.dart';
import 'package:testapp/presentation/journeys/menu/menu_group.dart';
import 'package:testapp/presentation/journeys/news/news_grip_view_widget.dart';
import 'package:testapp/presentation/journeys/welcome_box/welcome_box_widget.dart';
import '../../../common/extensions/size_extensions.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            BannerWithSearchWidget(),
            WelcomeWidget(),
            MenuGroup(),
            Container(
              height: Sizes.dimen_48.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/banner_2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            NewsGripViewWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
