import 'package:flutter/material.dart';

import '../util/profiletap_1.dart';
import '../util/profiletap_2.dart';
import '../util/profiletap_3.dart';

class UserProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sam', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black,),
          actions: [
              Icon(Icons.menu, color: Colors.black,)
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [

            //profile photo
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200]
              ),
            ),

            //user name
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('@createdbysam', style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            //number of following, follower, like,
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        Text('37',style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('Following', style: TextStyle(color: Colors.grey, fontSize: 15),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text('15',style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('Follower', style: TextStyle(color: Colors.grey, fontSize: 15),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('8',style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('Like', style: TextStyle(color: Colors.grey, fontSize: 15),),
                      ],
                    ),
                  ),
                )

              ],
            ),

            SizedBox(height: 8,),
            //button edit profile
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text('Edit profile', style: TextStyle(color: Colors.black, fontSize: 20),),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.camera_alt, color: Colors.grey[800],),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.bookmark_border, color: Colors.grey[800],),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
            // bio
            SizedBox(height: 15,),
            Text('Bio here', style: TextStyle(color: Colors.grey[500]),),

            //default tap controllor
            TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.grid_3x3, color: Colors.black,),),
                  Tab(icon: Icon(Icons.favorite, color: Colors.black,),),
                  Tab(icon: Icon(Icons.lock_outline_rounded, color: Colors.black,),),
                ]),

            Expanded(
                child: TabBarView(
                    children: [
                      FirstTap(),
                      SecondTap(),
                      ThirdTap(),
                    ]))

          ],
        ),
      ),
    );
  }
}
