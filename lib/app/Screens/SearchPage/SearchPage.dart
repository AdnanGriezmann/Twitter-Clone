import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:twitter_clone/app/GlobalWidgets/drawer.dart';
import 'package:twitter_clone/app/Screens/SearchPage/widgets/Searchcenter.dart';
import 'package:twitter_clone/app/GlobalWidgets/sliverappbarsearch.dart';
import 'package:twitter_clone/app/utils/Images.dart';
import 'package:twitter_clone/app/utils/colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Darkblue,
      drawer: drawerside(),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          Builder(
            builder: (context) => sliverappbarsearch(text: 'Search Twitter',),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    height: 27.0.h,
                    width: double.maxFinite,
                    child:
                        Image.asset(Appimages.searchimage, fit: BoxFit.cover)),
                Padding(
                  padding: EdgeInsets.only(right: 62.0.w, top: 2.0.h),
                  child: Text(
                    'Trends for you',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                SizedBox(
                  height: 1.0.h,
                ),
                searchcenterpart(
                  text1: 'Trending in Pakistan',
                  text2: 'WhatsApp',
                  text3: '242k Tweets',
                ),
                  searchcenterpart(
                  text1: 'Explore trend',
                  text2: 'FaceBook',
                  text3: '400k Tweets',
                ),
                  searchcenterpart(
                  text1: 'Trending in Pakistan',
                  text2: 'PTI',
                  text3: '21k Tweets',
                ),
                  searchcenterpart(
                  text1: 'Orginazation',
                  text2: '#ISPR',
                  text3: '453k Tweets',
                ),
                  searchcenterpart(
                  text1: 'Entertainment',
                  text2: 'Justin bieber',
                  text3: '900k Tweets',
                ),
              ],
            ),
          ),
          
        ],
        
      )),
       floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.buttoncolor,
        elevation: 0,  
        onPressed: (){},
        child: Icon(Icons.add,color: AppColors.white),
        



      ),
    );
  }
}

