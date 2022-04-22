import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class Iconbottom extends StatelessWidget {
  const Iconbottom(
      {Key? key, required this.assetname,this.isSelected= false})
      : super(key: key);
  final String assetname;
  
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/$assetname',
      height: 7.0.h,
      width: 7.0.w,
      color: isSelected ?AppColors.white : Colors.grey,
    );
  }
}
