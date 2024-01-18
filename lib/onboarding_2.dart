import 'package:exam_project/onboarding_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'holder.dart';

class Onboarding_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 132),
                child:
                Image.network("https://i.imgur.com/Nx65N5r.png")),
            Padding(
                padding: EdgeInsets.only(top: 68, left: 52, right: 51),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text("Flexible Payment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 96, 250),
                          fontSize: 24,

                        )
                    ),
                  ),
                )
            ),
            Padding(
                padding: EdgeInsets.only(left: 55, right: 54),
                child: Text("Different modes of payment either before and after delivery without stress",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14
                  ),)),
            Padding(
              padding: EdgeInsets.only(top: 130, left: 24, right: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 75, left: 25),
                      child: OutlinedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return Holder();
                        }));
                      },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1))),
                              side: MaterialStateProperty.resolveWith((states)
                              => BorderSide(width: 1, color: Color.fromARGB(255, 5, 96, 250)))),
                          child: Text("Skip",
                            style: TextStyle(
                                fontSize: 14,
                              color: Color.fromARGB(255, 5, 96, 250)
                            ),)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 75, right: 25),
                      child: OutlinedButton(onPressed: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return Onboarding_3();}
                        )
                        );
                      },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1))),
                          backgroundColor: MaterialStateColor.resolveWith((states)
                          => Color.fromARGB(255, 5, 96, 250))),

                          child: Text("Next",
                            style: TextStyle(
                                fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255)
                            ),)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}