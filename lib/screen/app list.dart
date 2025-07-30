import 'package:firstpro/gt.dart';
import 'package:firstpro/screen/insta.dart';
import 'package:firstpro/screen/proddes.dart';
import 'package:firstpro/screen/spot.dart';
import 'package:flutter/material.dart';

import 'Amazon2.dart';


class apl extends StatefulWidget {
  const apl({super.key});

  @override
  State<apl> createState() => _aplState();
}

class _aplState extends State<apl> {


  int _index3 = 0;

  final Pages  = [
    amaz2(),
    prodes(),
    inst(),
    gta(),
    spoti(),


  ];

  void tap (index){

    setState(() {
      _index3 = index;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[_index3],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps,color: Colors.black,),label: "Menu",),
            BottomNavigationBarItem(icon: Icon(Icons.inbox,color: Colors.black,),label: "Inbox"),
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.play_arrow,color: Colors.black,),label: "Report"),
          ],
        currentIndex: _index3,
        onTap: tap,

      ),

    );
  }
}
