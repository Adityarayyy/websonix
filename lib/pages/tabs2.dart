import 'package:flutter/material.dart';
import 'package:websonix/pages/album.dart';
import 'package:websonix/pages/homepage.dart';
import 'package:websonix/pages/superlistener_screen.dart';

import 'explore_screen.dart';


class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  
  int _selectedIndex = 0;

  final List<Widget> Screens = [
    const Homepage(),
     ExplorePage(),
    const MusicPlayerScreen(),
    const SuperlistenerScreen(),

  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        toolbarHeight: 70,
        backgroundColor: Color(0xFF140A20),
        
        leading: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
          child: Row(
            children: [
              Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    Scaffold.of(context).openDrawer(); // Corrected context usage
                  },
                ),
              ),

              Icon(Icons.person, color: Colors.white,),
              Icon(Icons.notifications_active, color: Colors.white)
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.thunderstorm, color: Colors.white),
          )
        ],
      ),
      drawer: Drawer(),
      // body: MusicApp(),
      body: Screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff140A20),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          backgroundColor: Color(0xFF140A20),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          backgroundColor: Color(0xFF140A20),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_purple500),
          backgroundColor: Color(0xFF140A20),
          label: 'Vibe',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add),
          backgroundColor: Color(0xFF140A20),
          label: 'Library',
        ),
      ],
    )
    );
  }
}
