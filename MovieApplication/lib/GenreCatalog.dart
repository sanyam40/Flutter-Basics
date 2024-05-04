import 'package:flutter/material.dart';
import 'package:moviecatalog/BottomNavigationBar.dart';
import 'package:moviecatalog/MovieDetail.dart';
import 'package:moviecatalog/menu-drawer.dart';
import 'data.dart'; // Importing the movie data

class GenreScreen extends StatefulWidget {
  final String genre;

  const GenreScreen({Key? key, required this.genre});

  @override
  _GenreScreenState createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  late String _searchQuery;
  late double _minRating;
  late double _maxRating;
  late List<Movie> _filteredMovies;

  @override
  void initState() {
    super.initState();
    _searchQuery = '';
    _minRating = 0;
    _maxRating = 10;
    if (widget.genre.isEmpty) {
      _filteredMovies =
          movies.toList(); // Fetch all movies if genre is not provided
    } else {
      _filteredMovies = movies
          .where((movie) => movie.genre.contains(widget.genre))
          .toList(); // Filter movies by genre
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.genre.isNotEmpty ? widget.genre : 'All'} Genre', // Display 'All' if genre is not provided
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(12, 41, 65, 1),
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MyBottomNavigationBar(),
      backgroundColor: const Color(0xFF00050D),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value.toLowerCase();
                  _filterMovies();
                });
              },
              decoration: const InputDecoration(
                labelText: 'Search by name',
                filled: true,
                labelStyle: TextStyle(color: Colors.white),
                fillColor: Color.fromARGB(255, 53, 52, 52),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _minRating = double.tryParse(value) ?? 0;
                        _filterMovies();
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Minimum Rating',
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      fillColor: Color.fromARGB(255, 53, 52, 52),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _maxRating = double.tryParse(value) ?? 10;
                        _filterMovies();
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Maximum Rating',
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      fillColor: Color.fromARGB(255, 53, 52, 52),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 40,
              padding: const EdgeInsets.all(10),
              children: _filteredMovies.map((movie) {
                return _buildPhotoListItem(
                  imageUrl: movie.moviePhotoLink,
                  description: movie.movieName,
                  rating: movie.rating,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieDetailsScreen(
                          movieName: movie.movieName,
                          movie: movie,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  void _filterMovies() {
    _filteredMovies = movies
        .where((movie) =>
            (widget.genre.isEmpty || movie.genre.contains(widget.genre)) &&
            movie.movieName.toLowerCase().contains(_searchQuery) &&
            movie.rating >= _minRating &&
            movie.rating <= _maxRating)
        .toList();
  }

  Widget _buildPhotoListItem({
    required String imageUrl,
    required String description,
    double? rating,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 200,
          width: 200,
          child: Card(
            color: const Color.fromARGB(255, 0, 0, 0),
            child: SingleChildScrollView(
              // Wrap content in SingleChildScrollView
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    imageUrl,
                    height: 80,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.white),
                  ),
                  if (rating != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 20),
                        const SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
