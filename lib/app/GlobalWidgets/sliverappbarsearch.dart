import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/Images.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class sliverappbarsearch extends StatelessWidget {
  final String text;

  const sliverappbarsearch({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
            padding: EdgeInsets.only(bottom: 1.5.h, right: 1.0.h),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.settings_sharp,
                size: 25.0.sp,
              ),
            ),
          ),
        ],
        flexibleSpace: Padding(
          padding: EdgeInsets.only(left: 10.0.h, right: 8.0.h, top: 0.5.h),
          child: Container(
            height: 5.0.h,
            width: 2.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0.h),
              border: Border.all(
                color: AppColors.sub,
              ),
              color: AppColors.black,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: Text(text,
                  style: Theme.of(context).textTheme.subtitle1),
            ),
          ),
        ));
  }
}
