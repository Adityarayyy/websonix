import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // onTap: selectPage,
      // currentIndex: _selectedPageIndex,
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
    );
  }
}