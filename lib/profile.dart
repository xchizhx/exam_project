import 'package:exam_project_2/home.dart';
import 'package:exam_project_2/track.dart';
import 'package:exam_project_2/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget{


  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 71, left: 24),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 7.5),
                    child: Image.network("https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-2-1024.png",
                    width: 60,
                    height: 60,),
                  ),
                  Column(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 14),
                          child: Text("Hello Ken",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                              color: Color.fromARGB(255, 58, 58, 58)),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: RichText(text: const TextSpan(
                            children: [
                              TextSpan(text: "Current balance:",
                                  style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
                              TextSpan(text: "N10,712:00",
                                  style: TextStyle(color: Color.fromARGB(255, 5, 96, 250)))
                            ]
                        )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 12, top: 14, bottom: 14),
                        child: Icon(Icons.face)),
                    Column(
                      children: [
                        Text("Hello Ken",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 58, 58, 58)),
                        ),
                        Text("")
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}