import 'package:flutter/material.dart';
import '../homepage.dart';

class Tab extends StatefulWidget {
  const Tab({super.key});

  @override
  State<Tab> createState() => _TabState();
}

class _TabState extends State<Tab> {
  int _selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF362551),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Corrected context usage
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 183, 168, 207),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.person, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    'Hello, User!',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                selectPage(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                Navigator.pop(context);
                selectPage(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Library'),
              onTap: () {
                Navigator.pop(context);
                selectPage(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                // Handle logout logic
              },
            ),
          ],
        ),
      ),
      body: Homepage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xFF362551),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Color(0xFF362551),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            backgroundColor: Color(0xFF362551),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thunderstorm),
            backgroundColor: Color(0xFF362551),
            label: 'Premium',
          ),
        ],
      ),
    );
  }
}
