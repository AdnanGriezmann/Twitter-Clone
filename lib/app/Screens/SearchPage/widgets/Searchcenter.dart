import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class searchcenterpart extends StatelessWidget {
  const searchcenterpart({
    Key? key, required this.text1, required this.text2, required this.text3,
  }) : super(key: key);

  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.0.w,top: 3.0.sp,left: 4.0.w),
              child: Text(text1,
                  style: Theme.of(context).textTheme.subtitle1),
            ),
            Icon(
              Icons.more_vert_outlined,
              color: AppColors.sub,
            ),
          ],
        ),
        SizedBox(height: 1.0.h,),
        Padding(
          padding: EdgeInsets.only(left: 6.0.w,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text2, style: Theme.of(context).textTheme.caption),
              SizedBox(
                height: 0.5.h,
              ),
              
              Text(text3,
                  style: Theme.of(context).textTheme.subtitle1)
            ],
          ),
          
        ),
        SizedBox(height: 1.8.h,),
      ],
    );
  }
}
