// movie_details_screen.dart

import 'package:flutter/material.dart';
import 'package:moviecatalog/BottomNavigationBar.dart';
import 'package:moviecatalog/menu-drawer.dart';
import 'data.dart'; // Importing the movie data

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailsScreen(
      {Key? key, required this.movie, required String movieName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00050D),
      appBar: AppBar(
          title: Text(movie.movieName,
              style: const TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromRGBO(12, 41, 65, 1)),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              movie.moviePhotoLink,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Rating: ${movie.rating}',
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            // You can add more details about the movie here
          ],
        ),
      ),
    );
  }
}
