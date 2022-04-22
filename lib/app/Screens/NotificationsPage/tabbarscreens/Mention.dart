import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/Screens/HomePage/widgets/topprofilewidget.dart';
import 'package:twitter_clone/app/utils/Images.dart';

class Mention extends StatelessWidget {
  const Mention({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          upperpic(
              text: 'Sara',
              text2email: 'sara@3gmail',
              text3time: '.27 may 21',
              image: Appimages.girlimage),
          Padding(
            padding: EdgeInsets.only(right: 11.0.h),
            child: Text('Replaying to @its_adnan @jialis',
                style: Theme.of(context).textTheme.subtitle1),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.0.h),
            child: Text(
              'hello this is personel email and tag with so many friends ana family we love \n are born to express happy',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          upperpic(
              text: 'adnan',
              text2email: 'adnan@gmail',
              text3time: '. 1mar21',
              image: Appimages.ad3image),
          Padding(
            padding: EdgeInsets.only(right: 11.0.h),
            child: Text('Replaying to @messn @newa',
                style: Theme.of(context).textTheme.subtitle1),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.0.h),
            child: Text(
              'tag with so many friends ana family we love \n are born to express happy best',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 11.0.h),
            child: Text('Replaying to @ali @ne2eewa',
                style: Theme.of(context).textTheme.subtitle1),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.0.h),
            child: Text(
              ' friends ana family we love \n are born to express happy best',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          upperpic(
              text: 'messi',
              text2email: '\tmessi@gmail',
              text3time: '. mar 22',
              image: Appimages.ad2image),
          Padding(
            padding: EdgeInsets.only(right: 11.0.h),
            child: Text('Replaying to @asmaa @quber',
                style: Theme.of(context).textTheme.subtitle1),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.0.h),
            child: Text(
              'you are so pretty \n are born to express happy best',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
