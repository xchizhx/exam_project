import 'package:exam_project_2/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_up extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Create an account"),
            Text("Complete the sign up process to get started"),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Full name",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 8),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 14, bottom: 14),
                    child: Text("Ivanov Ivan")),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Phone Number",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 8),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 14, bottom: 14),
                    child: Text("**********")),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Password",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 8),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 14, bottom: 14),
                    child: Text("**********")),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Password",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 8),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 14, bottom: 14),
                    child: Text("**********")),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Password",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 8),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 14, bottom: 14),
                    child: Text("**********")),
              ),
            ),
            OutlinedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Profile();
              }));
            }, child: Text("To Profile"))
          ],
        ),
      ),
    );
  }
}