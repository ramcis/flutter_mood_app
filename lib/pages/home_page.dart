// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:dribble_clone/util/emoticon.dart';
import 'package:dribble_clone/util/exercies_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              //greetings raw
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'hello there',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '4 april 2022',
                              style: TextStyle(
                                color: Colors.blue[200],
                              ),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // search bar
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Row(children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    //how do you feel
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel ?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //4 different faces
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //bad
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😩',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'bad',
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
                              'fine',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        //good
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😀',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'good',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        //excellent
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '🤣',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'amazing',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                      child: Column(
                    children: [
                      //exercices heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercies',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      //listview of exercices
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciceTile(
                              icon: Icons.favorite,
                              exercieName: 'speaking skills',
                              subName: '15 exercies',
                              exColor: Colors.orange,
                            ),
                            ExerciceTile(
                              icon: Icons.person,
                              exercieName: 'talking skills',
                              subName: '14 exercies',
                              exColor: Colors.blue,
                            ),
                            ExerciceTile(
                              icon: Icons.star,
                              exercieName: 'writing skills',
                              subName: '18 exercies',
                              exColor: Colors.pink,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
                ),
              )
            ],
          ),
        ));
  }
}
