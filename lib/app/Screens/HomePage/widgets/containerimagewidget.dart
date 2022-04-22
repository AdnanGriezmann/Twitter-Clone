import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class containerimage extends StatelessWidget {
  const containerimage({
    required this.image,
    Key? key,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 6.0.h),
          child: Container(
            height: 46.0.h,
            width: 40.0.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.0.h),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
          ),
          
        ),
        SizedBox(height: 0.7.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 9.0.w),
              child: Icon(Icons.mode_comment_outlined,color: AppColors.sub,),
              
            ),
           
            Icon(Icons.repeat_rounded,color: AppColors.sub),
            Icon(Icons.heart_broken_rounded,color: AppColors.sub),
            Icon(Icons.share,color: AppColors.sub),



          ],

        )
      ],
    );
    
  }
}
