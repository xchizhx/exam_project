import 'package:exam_project_2/profile.dart';
import 'package:exam_project_2/track.dart';
import 'package:exam_project_2/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  PageController controller = PageController();
  var pages = [Wallet(), Track(), Profile()];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Color.fromARGB(255, 5, 96, 250),
        unselectedItemColor: Color.fromARGB(255, 167, 167, 167),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet")
        ],
        onTap: (newIndex){
          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
      body: pages[currentIndex]
    );
  }
}
