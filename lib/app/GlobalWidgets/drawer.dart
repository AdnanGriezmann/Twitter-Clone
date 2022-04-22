import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/utils/Images.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class drawerside extends StatelessWidget {
  const drawerside({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.Darkblue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 32.0.h,
                  width: double.maxFinite,
                  
                  child: Padding(
                    padding:  EdgeInsets.only(top: 6.8.h,left: 3.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.0.h,right: 14.0.h),
                          child: Container(
                            height: 8.0.h,
                            width: 8.0.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  Appimages.appbarimage,
                                ),
                              ),
                            ),
                          ),
                          
                        ),
                        SizedBox(height: 0.5.h,),
                        Text('Muhammad Adnan',style: Theme.of(context).textTheme.headline6,),
                        SizedBox(height: 0.5.h,),
                        Text('@itsx__Adnan',style: Theme.of(context).textTheme.subtitle1,),
                       SizedBox(height: 1.9.h,),
                        Row(
                          children: [
                            Text('454',style: Theme.of(context).textTheme.headline6),
                              SizedBox(width: 1.4.w,),
                             Text('Following',style: Theme.of(context).textTheme.subtitle1),
                             SizedBox(width: 4.0.w),
                              Text('72',style: Theme.of(context).textTheme.headline6),
                               SizedBox(width: 1.4.w,),
                               Text('Followers',style: Theme.of(context).textTheme.subtitle1),
                          ],
        
                        ),
                      
                      
        
                      ],
                    ),
                  ),
                  ),
                  Divider(),
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person_outline_outlined,size: 26.0.sp,),
                        title: Text('Profile'),
                  
                      ),
                       ListTile(
                        leading: Icon(Icons.view_list_outlined,size: 26.0.sp,),
                        title: Text('Lists'),
                  
                      ),
                        ListTile(
                        leading: Icon(Icons.topic_outlined,size: 26.0.sp,),
                        title: Text('Topics'),
                  
                      ),
                           ListTile(
                        leading: Icon(Icons.bookmark_border,size: 26.0.sp,),
                        title: Text('Bookmarks'),
                  
                      ),
                        ListTile(
                        leading: Icon(Icons.edit_note_outlined,size: 26.0.sp,),
                        title: Text('Moments'),
                  
                      ),
                         ListTile(
                        leading: Icon(Icons.money_sharp,size: 26.0.sp,),
                        title: Text('Monetization'),
                  
                      ),
                      Divider(),
                         ListTile(
                        leading: Icon(Icons.rocket_launch_outlined,size: 26.0.sp,),
                        title: Text('Twitter for Professional'),
                  
                  
                         ),
                         Divider(),
                         ListTile(
                           title: Text('Settings and privacy'),
                  
                         ),
                         ListTile(
                           title: Text('Help Center'),
                  
                         ),
                    ],
                  ),
                  Divider(),
                    ListTile(
                    leading: Icon(Icons.lightbulb_outline_rounded),
                    trailing: Icon(Icons.square_rounded),

                  ),
                

            ],
          ),
          
        ),
        
        );
  }
}
