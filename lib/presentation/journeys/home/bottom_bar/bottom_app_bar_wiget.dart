import 'package:flutter/material.dart';

import 'package:testapp/common/constants/size_constants.dart';
import 'package:testapp/presentation/journeys/home/bottom_bar/bottom_bar_item_constant.dart';
import 'package:testapp/presentation/journeys/home/bottom_bar/bottom_bar_item_widget.dart';
import '../../../../common/extensions/size_extensions.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.dimen_32.h,
      padding: EdgeInsets.only(
        bottom: Sizes.dimen_2.h,
      ),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(Sizes.dimen_10.w),
            topLeft: Radius.circular(Sizes.dimen_10.w)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          for (var i = 0; i < BottomBarItemConstant.bottomMenuItems.length; i++)
            BottomBarItemWidget(
              icon: BottomBarItemConstant.bottomMenuItems[i].icon,
              title: BottomBarItemConstant.bottomMenuItems[i].title,
              onPress: () {},
              active: i == 0,
            )
        ],
      ),
    );
  }
}
