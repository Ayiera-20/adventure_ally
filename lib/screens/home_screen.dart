import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:university_app/screens/Signup.dart';
import 'package:university_app/screens/login.dart';

class HomeScreen extends StatelessWidget {

  int _currentIndex = 0;

  HomeScreen({super.key});

  
  @override
   Widget build(BuildContext context) {
     return Scaffold(
      // body:Column(
      //   children: [
      //     Container(
      //   decoration: const BoxDecoration(      
      //     image: DecorationImage(
      //       image: ExactAssetImage(
      //         'assets/images/france.jpg'
      //       )
      //       )
      //   ),
      // ),
      //   ],
      // ) ,
      
      appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Adventure Ally',
        style: TextStyle(color: Color(0xFF8FF2F7), fontStyle: FontStyle.italic, fontSize: 20),
      ),
      backgroundColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: ListView(    
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(    
        margin: EdgeInsets.all(0),  
        padding: EdgeInsets.only(bottom: 0.5, top: 60 ),
        decoration: BoxDecoration(
         color: Colors.black,
        ),

        child: Text('Start your journey with us!', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic), textAlign: TextAlign.center, ),
      ),
      ListTile(
        title: const Text('Sign up'),
        tileColor: Colors.white,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Signup(),
                ));
        },
      ),
      ListTile(
        title: const Text('Log in'),
        tileColor: Colors.white,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Login(),
                ));
        },
      ),
      ListTile(
  title: const Text('close window'),
  tileColor: Colors.white,
  onTap: () {
    
    Navigator.pop(context);
  },
),
    ],
  ),
      ),
      
      //  Row(children: [],)
     
      
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', 
            backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Destination', 
            backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search', 
            backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Destination', 
            backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile', 
            backgroundColor: Colors.black
            ),
            
        ],
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;

        //   });

        // },

      ),

     );
   }
}