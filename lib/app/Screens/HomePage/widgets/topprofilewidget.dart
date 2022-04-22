import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/colors.dart';


class upperpic extends StatelessWidget {
  const upperpic({
    required this.text,
    required this.text2email,
    required this.text3time,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String text;
  final String text2email;
  final String text3time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(1.0.h),
          child: Container(
            height: 9.0.h,
            width: 9.0.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 6.0.h),
          child: Text(text, style: Theme.of(context).textTheme.headline6),
        ),
       
        Padding(
          padding: EdgeInsets.only(bottom: 6.0.h),
          child: Text(text2email, style: Theme.of(context).textTheme.subtitle1),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 6.0.h),
          child: Text(text3time, style: Theme.of(context).textTheme.subtitle1),
        ),
        SizedBox(width: 11.0.w,),
        Padding(
          padding:  EdgeInsets.only(bottom: 5.0.h),
          child: Icon(Icons.more_vert,color: AppColors.sub),
        ),
      ],
    );
  }
}
