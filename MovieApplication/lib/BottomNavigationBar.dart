import 'package:flutter/material.dart';
import 'package:moviecatalog/GenreCatalog.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: 'Genre',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'My Account',
        ),
      ],
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.blue,
      onTap: (int index) {
        if (index == 0) {
          // Navigate to Home screen
          Navigator.pushReplacementNamed(context, '/');
        } else if (index == 1) {
          // Navigate to Search screen
          // Replace the route with the desired search screen route
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GenreScreen(
                genre: '',
              ),
            ),
          );
        } else if (index == 2) {
          // Navigate to Genre screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GenreScreen(
                genre: '',
              ),
            ),
          );
        } else if (index == 3) {
          // Navigate to My Account screen
          // Replace the route with the desired account screen route
          Navigator.pushReplacementNamed(context, '/my_account');
        }
      },
    );
  }
}
