import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class allasets extends StatelessWidget {
  const allasets({
    Key? key, required this.text, required this.img,
  }) : super(key: key);
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.0.h,
      width: double.maxFinite,
     
      child: Padding(
        padding: EdgeInsets.only(left: 5.0.h, top: 1.3.h),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: AppColors.buttoncolor,
                  size: 24.0.sp,
                ),
                SizedBox(
                  width: 1.0.h,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(46.0.h),
                  child: Container(
                    height: 4.0.h,
                    width: 8.0.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        img,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.0.h, top: 1.0.h),
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Divider(),
          ],
        ),
        
      ),
      
    );
    
  }
}
