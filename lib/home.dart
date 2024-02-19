import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtry2ses_2/Track.dart';
import 'package:newtry2ses_2/profile.dart';
import 'package:newtry2ses_2/wallet.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController();
  var pages = [Home(), Wallet(), Track(), Profile()];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: currentIndex,
       selectedItemColor: Color.fromARGB(255, 5, 96, 250),
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
         BottomNavigationBarItem(icon: Icon(Icons.track_changes), label: "Track"),
         BottomNavigationBarItem(icon: Icon(Icons.face), label: "Profile")
       ],
     ),
   );
  }
}