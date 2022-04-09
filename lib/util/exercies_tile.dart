// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExerciceTile extends StatelessWidget {
  final icon;
  final String exercieName;
  final String subName;
  final exColor;

  const ExerciceTile(
      {Key? key,
      required this.icon,
      required this.exercieName,
      required this.subName,
      required this.exColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        padding: EdgeInsets.all(16),
                        color: exColor,
                        child: Icon(
                          icon,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      Text(
                        exercieName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //subtitles
                      Text(
                        subName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          )),
    );
  }
}
