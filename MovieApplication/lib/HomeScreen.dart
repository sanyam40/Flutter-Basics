import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:moviecatalog/BottomNavigationBar.dart';
import 'package:moviecatalog/GenreCatalog.dart';
import 'package:moviecatalog/menu-drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00050D),
      appBar: AppBar(
        title: const Text(
          'MovieCatalog App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(12, 41, 65, 1),
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                          genre: '',
                        ),
                      ),
                    );
                  },
                  child: Image.network(
                    'https://stat4.bollywoodhungama.in/wp-content/uploads/2016/03/50368181.jpg',
                    height: 400,
                    width: 400,
                    fit: BoxFit.fill,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                          genre: '',
                        ),
                      ),
                    );
                  },
                  child: Image.network(
                    'https://m.media-amazon.com/images/I/818gvtO-taL._AC_UF1000,1000_QL80_.jpg',
                    height: 400,
                    width: 400,
                    fit: BoxFit.fill,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                          genre: '',
                        ),
                      ),
                    );
                  },
                  child: Image.network(
                    'https://rukminim2.flixcart.com/image/850/1000/jthjki80/poster/r/y/b/small-boly3-dpostf-3-idiots-aamir-khan-bollywood-hindi-small-original-imafet9zgyuueswb.jpeg',
                    height: 400,
                    width: 400,
                    fit: BoxFit.fill,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                          genre: '',
                        ),
                      ),
                    );
                  },
                  child: Image.network(
                    'https://miro.medium.com/v2/resize:fit:800/0*LbbxCXdsRDuCOQCC.jpg',
                    height: 400,
                    width: 400,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 300,
                viewportFraction: 1.0,
                autoPlay: true,
                enlargeCenterPage: false,
              ),
            ),
            SizedBox(
              height: 400,
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                children: [
                  _buildCategoryItem('Action',
                      'https://res.cloudinary.com/dtvaexasg/image/upload/v1710396367/flutter/hindi.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                            genre: 'Hindi'), // Pass the genre to GenreScreen
                      ),
                    );
                  }),
                  _buildCategoryItem('Comedy',
                      'https://res.cloudinary.com/dtvaexasg/image/upload/v1710397585/flutter/english.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                            genre: 'English'), // Pass the genre to GenreScreen
                      ),
                    );
                  }),
                  _buildCategoryItem('Drama',
                      'https://res.cloudinary.com/dtvaexasg/image/upload/v1710397708/flutter/punjabi.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                            genre: 'Punjabi'), // Pass the genre to GenreScreen
                      ),
                    );
                  }),
                  _buildCategoryItem('Thriller',
                      'https://res.cloudinary.com/dtvaexasg/image/upload/v1710397709/flutter/gujrati.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                            genre: 'Gujarati'), // Pass the genre to GenreScreen
                      ),
                    );
                  }),
                  _buildCategoryItem('Horror',
                      'https://res.cloudinary.com/dtvaexasg/image/upload/v1710397711/flutter/telugu.png',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenreScreen(
                            genre: 'Telugu'), // Pass the genre to GenreScreen
                      ),
                    );
                  }),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  SizedBox(height: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
      String category, String imageUrl, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF00050D),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network(
          imageUrl,
          height:
              double.infinity, // Set height to fill available space vertically
          width:
              double.infinity, // Set width to fill available space horizontally
          fit: BoxFit.cover, // Use cover to fill the entire space
        ),
      ),
    );
  }
}
