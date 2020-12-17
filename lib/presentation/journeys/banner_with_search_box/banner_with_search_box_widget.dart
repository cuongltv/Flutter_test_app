import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/common/constants/size_constants.dart';
import 'package:testapp/common/screenutil/screenutil.dart';
import 'package:testapp/presentation/themes/theme_color.dart';
import '../../../common/extensions/size_extensions.dart';

class BannerWithSearchWidget extends StatelessWidget {
  const BannerWithSearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.lightGrey,
      height: ScreenUtil.screenHeight * 0.3,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 50,
            ),
            height: ScreenUtil.screenHeight * 0.3 - 37,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('assets/pngs/banner_top.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: Sizes.dimen_12.w),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: Sizes.dimen_24.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Sizes.dimen_4.w),
                border: Border.all(color: Color(0xFFE9E9E9)),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Tìm kiểm, bạn muốn tìm gì nào!",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/svgs/Search.svg"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
