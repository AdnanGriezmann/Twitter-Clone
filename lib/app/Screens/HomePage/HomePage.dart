import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/GlobalWidgets/drawer.dart';
import 'package:twitter_clone/app/Screens/HomePage/widgets/sliverappbar.dart';
import 'package:twitter_clone/app/Screens/HomePage/widgets/containerimagewidget.dart';
import 'package:twitter_clone/app/Screens/HomePage/widgets/topprofilewidget.dart';

import 'package:twitter_clone/app/utils/Images.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Darkblue,
      drawer: drawerside(),
      body: RawScrollbar(
        thickness: 2.0,
        thumbColor: AppColors.white,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              Builder(
                builder: (context) => sliverappbar(),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    upperpic(
                      text: 'Adnan',
                      text2email: '@adnan7',
                      text3time: '\t.\t 22h',
                      image: Appimages.ad1image,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0.h, bottom: 1.0.h),
                      child: Text(
                        'The pizza foodies...',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                      height: 1.0.h,
                    ),
                    containerimage(
                      image: Appimages.pizaimage,
                    ),
                    Divider(),
                    upperpic(
                      text: 'tinna',
                      text2email: '@mtina10',
                      text3time: '\t.\t 2h',
                      image: Appimages.girlimage,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0.h, bottom: 1.0.h),
                      child: Text(
                        'stylish girl call me baby',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                      height: 1.0.h,
                    ),
                    containerimage(
                      image: Appimages.girlimage,
                    ),
                     Divider(),
                    upperpic(
                      text: 'rodriguize',
                      text2email: '@rodtucker',
                      text3time: '. 32h',
                      image: Appimages.ad4image,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0.h, bottom: 1.0.h),
                      child: Text(
                        'A fastest car in world',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                      height: 1.0.h,
                    ),
                    containerimage(
                      image: Appimages.carimage,
                    ),
                     Divider(),
                    upperpic(
                      text: 'messi',
                      text2email: '@mess10',
                      text3time: '\t.\t 5h',
                      image: Appimages.ad2image,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0.h, bottom: 1.0.h),
                      child: Text(
                        'Newzealand one of the\ntop trending road in zurich a place of peace',
                        style: Theme.of(context).textTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 1.0.h,
                    ),
                    containerimage(
                      image: Appimages.roadimage,
                    ),
                     Divider(),
                    upperpic(
                      text: 'ronaldo',
                      text2email: '@roandl',
                      text3time: '. 9h',
                      image: Appimages.ad3image,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0.h, bottom: 1.0.h),
                      child: Text(
                        '',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                      height: 1.0.h,
                    ),
                    containerimage(
                      image: Appimages.buildingimage,
                    ),
                  ],
                ),
              ),
            ],
          ),
          
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.buttoncolor,
        elevation: 0,  
        onPressed: (){},
        child: Icon(Icons.add,color: AppColors.white),
        



      ),
    );
  }
}
