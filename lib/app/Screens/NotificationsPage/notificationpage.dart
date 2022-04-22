import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/GlobalWidgets/drawer.dart';
import 'package:twitter_clone/app/Screens/NotificationsPage/tabbarscreens/Mention.dart';
import 'package:twitter_clone/app/Screens/NotificationsPage/tabbarscreens/all.dart';
import 'package:twitter_clone/app/utils/Images.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  TabBarView _buildTabbarview() {
    return TabBarView(children: [
      All(),
      Mention(),
    ]);
  }

  TabBar _buildTabbar() {
    return TabBar(indicatorColor: AppColors.buttoncolor, 
    indicatorSize: TabBarIndicatorSize.label,
     indicatorWeight: 4.0,
     labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0.sp),
     
    
    tabs: [
      
      Tab(
        text: 'All',

        
        
      ),
      Tab(text: 'Mentions'),
      
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Darkblue,
      drawer: drawerside(),
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (_, __) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: AppColors.Darkblue,
                  title: Text('Notifications',
                      style: Theme.of(context).textTheme.headline6),
                  leading: Builder(
                    builder: (context) => Padding(
                      padding: EdgeInsets.only(
                          bottom: 0.97.h, left: 1.0.h, top: 0.4.h),
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
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.5.h, right: 1.0.h),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.settings_sharp,
                          size: 25.0.sp,
                        ),
                      ),
                    ),
                  ],
                  pinned: true,
                  floating: true,
                  bottom: _buildTabbar(),
                ),
              ];
            },
            body: _buildTabbarview(),
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
