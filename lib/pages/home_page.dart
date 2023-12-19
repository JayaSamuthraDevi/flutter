import 'package:flutter/material.dart';
import 'package:project1/components/my_drawer.dart';
import 'package:project1/utils/emoticon_face.dart';
import 'package:project1/utils/exercise_title.dart';

import '../components/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavbar(
          onTabChange: (int) {},
        ),
        drawer: const MyDrawer(),
        appBar: AppBar(),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    //greetings row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hi, There!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '23 Jan, 2023',
                              style: TextStyle(color: Colors.blue[200]),
                            ),
                          ],
                        ),

                        //notification
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Search",style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      //search bar
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //how do you feel?
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    ),
                    //4 different faces
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //bad
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '🙁',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Bad',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        //fine
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '🙂',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Fine',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        //well
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😄',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Well',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),

                        //excellent

                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '🤩',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Excellent',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )),
            //end of greetings row
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                  child: Column(
                children: [
                  //exercise heading
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercises',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //list view of exercises
                  Expanded(
                      child: ListView(
                    children: const [
                      ExerciseTitle(
                        icon: Icons.favorite,
                        exerciseName: 'Speaking Skills',
                        numberOfExercises: 15,
                        color:Colors.orange,
                      ),
                      ExerciseTitle(
                        icon: Icons.person,
                        exerciseName: 'Reading Skills',
                        numberOfExercises: 20,
                        color:Colors.green,
                      ),
                      ExerciseTitle(
                        icon: Icons.star,
                        exerciseName: 'Writing Skills',
                        numberOfExercises: 10,
                        color:Colors.blue,
                      ),
                    ],
                  ))
                ],
              )),
            )),
          ],
        )));
  }
}






//controller
//  _controller = VideoPlayerController.network(
//     'https://sample-video.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
//     ..initialize().then((_){setState((){})})
//   VideoPlayer(_controller),
