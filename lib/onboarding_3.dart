import 'package:exam_project/holder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding_3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 132),
                child:
                Image.network("https://i.imgur.com/DzoxAG4.png")),
            Padding(
                padding: EdgeInsets.only(top: 68, left: 52, right: 51),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text("Real-time Tracking",
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 96, 250),
                          fontSize: 24,

                        )
                    ),
                  ),
                )
            ),
            Padding(
                padding: EdgeInsets.only(left: 55, right: 54, top: 4),
                child: Text("Track your packages/items from the comfort of your home till final destination")),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 154, left: 24, right: 24),
                    child: OutlinedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Holder();
                      }));
                    },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1)))),
                        child: Text("Sign In")),
                  ),
                ),
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}