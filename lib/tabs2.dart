import 'package:flutter/material.dart';
import 'package:websonix/homepage.dart';
import 'package:websonix/discard/music_app.dart';

import 'components/bottom_nav_bar.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        toolbarHeight: 70,
        backgroundColor: Color(0xFF362551),
        
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
      body: Homepage(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
