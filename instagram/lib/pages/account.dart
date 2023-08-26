import 'package:flutter/material.dart';
import 'package:instagram/util/account_tab1.dart';
import 'package:instagram/util/account_tab2.dart';
import 'package:instagram/util/account_tab3.dart';
import 'package:instagram/util/account_tab4.dart';
import 'package:instagram/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle
                    ),
                  ),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //number of posts , follower, following
                        Column(
                          children: [
                            Text(
                              '237',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Posts')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '3939',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Follower')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '48',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Following')
                          ],
                        ),
                      ],
                    ),
                  )


                ],
              ),
            ),

            // name and bio
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Koko' , style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text('I create apps & game'),
                  ),
                  Text('facebook.come', style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                          padding: EdgeInsets.all(8),
                          child: Center(child: Text('Edit Profile')),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),

                          ),

                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Ad Tools')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),

                        ),

                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Insight')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),

                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),

            // stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'kiki', img: 'assets/images/avater1.jpg'),
                  BubbleStories(text: 'kiki', img: 'assets/images/avater1.jpg'),
                  BubbleStories(text: 'kiki', img: 'assets/images/avater1.jpg')

                ],
              ),
            ),
            
            TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_3x3_outlined),),
              Tab(icon: Icon(Icons.video_call),),
              Tab(icon: Icon(Icons.shop)),
              Tab(icon: Icon(Icons.person),)
            ]),

            Expanded(
                child: TabBarView(
                  children: [
                    AccountTab1(),
                    AccountTab2(),
                    AccountTab3(),
                    AccountTab4()
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
