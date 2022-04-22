

import 'package:flutter/material.dart';
import 'package:twitter_clone/app/Screens/NotificationsPage/widgets/allassets.dart';
import 'package:twitter_clone/app/utils/Images.dart';

class All extends StatelessWidget {
  const All({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          allasets(
            text: 'Erica Staurt Followed you',
            img: Appimages.pizaimage,
            
          ),
           allasets(
            text: 'adnan and 4 others Followed you',
            img: Appimages.ad4image,
            
          ),
           allasets(
            text: 'loresen Followed you',
            img: Appimages.roadimage,
            
          ),
           allasets(
            text: 'Erica Staurt Followed you',
            img: Appimages.pizaimage,
            
          ),
           allasets(
            text: 'adnan and 4 others Followed you',
            img: Appimages.ad4image,
            
          ),
           allasets(
            text: 'loresen Followed you',
            img: Appimages.roadimage,
            
          ),
            allasets(
            text: '23ww Followed you',
            img: Appimages.ad1image,
            
          ),
        ],
    
        
      ),
    );
  }
}

