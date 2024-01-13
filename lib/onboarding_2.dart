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
                child: Text("Different modes of payment either before and after delivery without stress")),
            Row(
              children: [
                OutlinedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return Holder();
                  }));
                }, child: Text("Skip")),
                Align(
                  alignment: Alignment.bottomRight,
                  child: OutlinedButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return Onboarding_3();}
                    )
                    );
                  },
                      child: Text("Next")),
                )
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}