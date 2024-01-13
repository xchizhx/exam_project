import 'dart:io';

import 'package:exam_project/holder.dart';
import 'package:exam_project/onboarding_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 132),
              child:
                Image.network("https://i.imgur.com/kxnMbj8.png")),
            Padding(
              padding: EdgeInsets.only(top: 68, left: 52, right: 51),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text("Quick Delivery At Your Doorstep",
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
                child: Text("Enjoy quick pick-up and delivery to your destination")),
            Padding(
              padding: EdgeInsets.only(top: 130, left: 24, right: 24),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Holder();
                      }));
                    }, child: Text("Skip")),
                  ),
                  Expanded(
                    child: OutlinedButton(onPressed: (){

                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return Onboarding_2();}
                      )
                      );
                    },
                        child: Text("Next")),
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
