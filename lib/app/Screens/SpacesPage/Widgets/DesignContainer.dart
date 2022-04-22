import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class designcontainer extends StatelessWidget {
  const designcontainer({
    Key? key,
    required this.colr,
    required this.text1,
    required this.text2,
    required this.colroval,
    required this.coloroval2,
    required this.coloroval3,
  }) : super(key: key);
  final Color colr;
  final String text1;
  final String text2;
  final Color colroval;
  final Color coloroval2;
  final Color coloroval3;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0.h),
      height: 45.0.h,
      width: 46.0.h,
      decoration: BoxDecoration(
        color: colr,
        borderRadius: BorderRadius.circular(4.0.h),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LIVE',
                  style: Theme.of(context).textTheme.caption,
                ),
                Icon(Icons.more_vert_outlined),
              ],
            ),
          ),
          Text(text1, style: Theme.of(context).textTheme.caption),
          SizedBox(
            height: 1.0.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0.h),
            child: Text(
              'Spaces you might be like- NFT',
              style: TextStyle(
                  color: AppColors.white, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 7.0.h,
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(2.0.h),
                child: Row(
                  children: [
                    Container(
                      height: 4.0.h,
                      width: 4.0.h,
                      decoration: BoxDecoration(
                        color: colroval,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 4.0.h,
                      width: 4.0.h,
                      decoration: BoxDecoration(
                        color: coloroval2,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 4.0.h,
                      width: 4.0.h,
                      decoration: BoxDecoration(
                        color: coloroval3,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 2.0.w,
                    ),
                    Text(
                      text2,
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ],
                ),
              ),
            ],
          ),
          Text(
            'Hello everywhere',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
