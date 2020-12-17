import 'package:flutter/material.dart';
import 'package:testapp/common/constants/size_constants.dart';
import '../../../common/extensions/size_extensions.dart';
import '../../themes/theme_text.dart';

class NewsGripViewWidget extends StatelessWidget {
  const NewsGripViewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.dimen_14.h,
        left: Sizes.dimen_12.w,
        right: Sizes.dimen_12.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tin tức mới nhất',
                  style: Theme.of(context).textTheme.blackBoldHeadline6),
              GestureDetector(
                child: Text(
                  'Xem thêm',
                  style: Theme.of(context)
                      .textTheme
                      .boldSubtitle1
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
                onTap: () {},
              )
            ],
          ),
          Container(
            height: 400,
            padding: EdgeInsets.only(top: Sizes.dimen_2.h),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 220 / 260,
              // crossAxisSpacing: Sizes.dimen_18.w,
              children: List.generate(4, (index) {
                return Column(
                  children: <Widget>[
                    Container(
                      height: Sizes.dimen_48.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/pngs/news_1.png'))),
                    ),
                    SizedBox(
                      height: Sizes.dimen_2.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Sizes.dimen_10.w),
                      child: Text(
                        'Bảo hiểm xe máy VBI - Nhanh chóng, uy tín, hiệu quả',
                        style: Theme.of(context).textTheme.boldSubtitle1,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
