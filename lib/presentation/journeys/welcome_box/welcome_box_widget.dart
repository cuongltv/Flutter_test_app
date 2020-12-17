import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/common/constants/size_constants.dart';
import 'package:testapp/common/screenutil/screenutil.dart';
import 'package:testapp/presentation/themes/theme_color.dart';
import '../../../common/extensions/size_extensions.dart';
import '../../themes/theme_text.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.dimen_40.h,
      color: AppColor.lightGrey,
      padding: EdgeInsets.only(left: Sizes.dimen_18.w, right: Sizes.dimen_28.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/pngs/avartar.png'),
                minRadius: 32,
              ),
              SizedBox(
                width: Sizes.dimen_12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Xin chào, Ngân',
                    style: Theme.of(context).textTheme.boldSubtitle1,
                  ),
                  Text(
                    'Hôm nay bạn thế nào ?',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/svgs/weather.svg',
            width: Sizes.dimen_80.sp,
          ),
        ],
      ),
    );
  }
}
