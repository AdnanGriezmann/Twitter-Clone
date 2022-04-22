import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/GlobalWidgets/drawer.dart';
import 'package:twitter_clone/app/utils/Images.dart';
import 'package:twitter_clone/app/utils/colors.dart';

import 'Widgets/DesignContainer.dart';

class SpacesPage extends StatelessWidget {
  const SpacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Darkblue,
      drawer: drawerside(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.Darkblue,
        title: Text(
          'Twitter',
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: Builder(
          builder: (context) => Padding(
            padding: EdgeInsets.only(bottom: 0.97.h, left: 1.0.h, top: 0.4.h),
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
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Padding(
              padding: EdgeInsets.only(top: 1.0.h, bottom: 1.0.h, left: 1.0.h),
              child: Text(
                'Happening Now',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Text(
              '\tSpaces going on right now',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 2.0.h,
            ),
            designcontainer(
              coloroval2: Colors.red, 
              colr: Colors.black, 
              text1: 'Marketing Q&A and Community\nBuilding-All are Welcome @nfsreftre',
               text2: '79 Listening',
               coloroval3: Colors.amber, 
               colroval: Colors.white,
              
            ),
             designcontainer(
              coloroval2: Colors.black, 
              colr: Colors.pink, 
              text1: 'New market terms\n also condition are Welcome @messi',
               text2: '120 Listening',
               coloroval3: Colors.white, 
               colroval: Colors.green,
              
            ),
             designcontainer(
              coloroval2: Colors.red, 
              colr: Colors.lightBlue.shade600,
              text1: 'focus on music only are frese @terrr78',
               text2: '40 Listening',
               coloroval3: AppColors.Darkblue, 
               colroval: Colors.purple,
              
            ),
            
          ],
        ),
        
      ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.buttoncolor,
        elevation: 0,  
        onPressed: (){},
        child: Icon(Icons.settings_voice_rounded,color: AppColors.white),
        



      ),
    );
  }
}

