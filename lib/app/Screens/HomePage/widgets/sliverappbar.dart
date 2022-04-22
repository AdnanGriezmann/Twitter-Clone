import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/Icons.dart';
import 'package:twitter_clone/app/utils/Images.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class sliverappbar extends StatelessWidget {
  const sliverappbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // pinned: true,
      floating: true,

      elevation: 2.0,
      expandedHeight: 3.0.h,

      backgroundColor: AppColors.Darkblue,

      leading: Padding(
        padding: EdgeInsets.only(bottom: 0.97.h, left: 1.0.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(110.0.h),
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  Appimages.appbarimage,
                ),
              )),
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.0.h, right: 1.0.h),
          child: InkWell(onTap: () {}, child: Icon(Icons.star_outline_sharp)),
        ),
      ],
      flexibleSpace: Padding(
        padding: EdgeInsets.only(top: 1.0.h),
        child: (Image(
          image: AssetImage(AppIcons.twittericon),
          height: 4.0.h,
          width: 4.0.w,
        )),
      ),
    );
  }
}
