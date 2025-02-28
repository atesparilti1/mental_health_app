import 'package:flutter/material.dart';
import 'package:mental_health_app/pages/chatbox_page.dart';
import 'package:mental_health_app/pages/profile_page.dart';

import '../util/emoticon_face.dart';
import '../util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            }
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatboxPage()),
              );
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',

          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Ates
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Ates!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '24 Feb, 2025',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )

                    ],
                  ),

                  SizedBox(height: 25,),

                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.all(12.0),

                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5,),
                        Text('Search', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),

                  SizedBox(height: 25,),

                  //how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("How do you feel?!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  SizedBox(height: 25,),

                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😞',
                          ),
                          Text('Bad',
                            style:
                            TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),

                      // fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          Text('Fine',
                            style:
                            TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),


                      // well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😄',
                          ),
                          Text('Well',
                            style:
                            TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),


                      // excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😁',
                          ),
                          Text('Excellent',
                            style:
                            TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0),
                    )
                ),
                padding: EdgeInsets.all(25.0),
                child: Center(
                  child: Column(
                    children: [

                      //exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Exercise',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              )
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      SizedBox(height: 20,),

                      //listview of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              nameOfExercise: 'Speaking Skills',
                              numberOfExercises: 15,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.menu_book_sharp,
                              nameOfExercise: 'Reading Skills',
                              numberOfExercises: 20,
                              color: Colors.blue,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              nameOfExercise: 'Swimming Skills',
                              numberOfExercises: 25,
                              color: Colors.purple,
                            ),
                            ExerciseTile(
                              icon: Icons.sports_gymnastics,
                              nameOfExercise: 'Running Skills',
                              numberOfExercises: 35,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.laptop_chromebook,
                              nameOfExercise: 'Writing Skills',
                              numberOfExercises: 30,
                              color: Colors.green,
                            ),
                            ExerciseTile(
                              icon: Icons.motorcycle_outlined,
                              nameOfExercise: 'Riding Skills',
                              numberOfExercises: 45,
                              color: Colors.red,
                            ),


                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
