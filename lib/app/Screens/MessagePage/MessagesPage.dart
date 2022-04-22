import 'package:flutter/material.dart';
import 'package:twitter_clone/app/GlobalWidgets/drawer.dart';
import 'package:twitter_clone/app/GlobalWidgets/sliverappbarsearch.dart';
import 'package:twitter_clone/app/Screens/HomePage/widgets/topprofilewidget.dart';
import 'package:twitter_clone/app/utils/Images.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.Darkblue,
        drawer: drawerside(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              Builder(
                builder: (context) => sliverappbarsearch(
                  text: 'Search Direct Messages',
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    upperpic(
                        text: 'adnan',
                        text2email: '@adn',
                        text3time: '05 mar',
                        image: Appimages.ad4image),
                    upperpic(
                        text: 'messi',
                        text2email: '@messi1',
                        text3time: '01 mar',
                        image: Appimages.ad2image),
                    upperpic(
                        text: 'colord',
                        text2email: '@colr3',
                        text3time: '06 mar',
                        image: Appimages.ad1image),
                    upperpic(
                        text: 'wed4',
                        text2email: '@a3w',
                        text3time: '08 mar',
                        image: Appimages.ad3image),
                    upperpic(
                        text: 'aswes',
                        text2email: '@aswe123',
                        text3time: '02 mar',
                        image: Appimages.roadimage),
                    upperpic(
                        text: 'colord',
                        text2email: '@colr3',
                        text3time: '06 mar',
                        image: Appimages.ad1image),
                    upperpic(
                        text: 'wed4',
                        text2email: '@a3w',
                        text3time: '08 mar',
                        image: Appimages.ad3image),
                    upperpic(
                        text: 'aswes',
                        text2email: '@aswe123',
                        text3time: '02 mar',
                        image: Appimages.roadimage),
                  ],
                ),
              )
            ],
          ),
        ),
         floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.buttoncolor,
        elevation: 0,  
        onPressed: (){},
        child: Icon(Icons.message,color: AppColors.white),
        



      ),
        
        );
  }
}
