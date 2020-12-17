import 'package:flutter/material.dart';
import 'package:testapp/common/constants/size_constants.dart';
import 'package:testapp/common/screenutil/screenutil.dart';
import '../../../common/extensions/size_extensions.dart';
import '../../themes/theme_text.dart';

class MenuGroup extends StatelessWidget {
  const MenuGroup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Sizes.dimen_10.h, left: Sizes.dimen_12.w),
      height: ScreenUtil.screenHeight * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Tiện ích dành cho bạn',
            style: Theme.of(context).textTheme.blackBoldHeadline6,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: Sizes.dimen_6.h),
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 12,
                children: List.generate(8, (index) {
                  return Column(
                    children: <Widget>[
                      Image.asset('assets/pngs/menu_2.png'),
                      SizedBox(
                        height: Sizes.dimen_2.h,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Sizes.dimen_10.w),
                        child: Text(
                          'báo tổn thất xe',
                          style: Theme.of(context).textTheme.subtitle1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
