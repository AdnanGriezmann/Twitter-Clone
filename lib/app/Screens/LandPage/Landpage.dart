import 'package:flutter/material.dart';
import 'package:twitter_clone/app/GlobalWidgets/Iconbottombar.dart';
import 'package:twitter_clone/app/Screens/HomePage/HomePage.dart';
import 'package:twitter_clone/app/Screens/MessagePage/MessagesPage.dart';
import 'package:twitter_clone/app/Screens/NotificationsPage/notificationpage.dart';
import 'package:twitter_clone/app/Screens/SearchPage/SearchPage.dart';
import 'package:twitter_clone/app/Screens/SpacesPage/Spaces.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class LandPage extends StatefulWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  State<LandPage> createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  int currentindex = 0;

  List<Widget> pages = [HomePage(), SearchPage(), SpacesPage(),NotificationPage(),MessagePage()];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Darkblue,
      bottomNavigationBar: BottomNavigationBar(
    
        backgroundColor: AppColors.Darkblue,
        type: BottomNavigationBarType.fixed,
        
        elevation: 2.2,
        iconSize: 24.0,
        selectedFontSize: 5.0,
    
    
        
        selectedItemColor: AppColors.white,
        unselectedItemColor: Colors.grey,
    
    
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Iconbottom(
              assetname: 'home.png',
              isSelected: 0 == currentindex,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Iconbottom(
              assetname: 'search.png',
              isSelected: 1 == currentindex,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Iconbottom(
              assetname: 'spaces.png',
              isSelected: 2 == currentindex,
            ),
            label: '',
          ),
            BottomNavigationBarItem(
            icon: Iconbottom(
              assetname: 'bell.png',
              isSelected: 3 == currentindex,
            ),
            label: '',
          ),
            BottomNavigationBarItem(
            icon: Iconbottom(
              assetname: 'email.png',
              isSelected: 4 == currentindex,
            ),
            label: '',
          ),
        ],
      ),
      body: pages[currentindex],
      
    );
  }
}
