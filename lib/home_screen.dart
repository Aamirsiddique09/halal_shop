import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:halal_shop/pages/categories.dart';
import 'package:halal_shop/pages/fav.dart';
import 'package:halal_shop/pages/more.dart';
import 'package:halal_shop/pages/screen_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  // Define a list of colors for the icons
  List<Color> iconColors = [
    const Color(0xFFE0B420), // Home
    const Color.fromARGB(255, 42, 46, 54), // Category
    const Color.fromARGB(255, 42, 46, 54), // Favorite
    const Color.fromARGB(255, 42, 46, 54), // More
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Add MediaQuery to get screen size information for PageView

    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        children: const <Widget>[
          // Screen 1
          ScreenView(),
          // Screen 2
          Categories(),
          //Screen 3
          Favorite(
            selectedProducts: [],
            itemCount: 0,
            price: '',
          ),
          MoreOtion(),
          // Add more screens as needed
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xFFE0E2EE),
        color: const Color(0xFFF8F7FB),
        animationDuration: const Duration(milliseconds: 300),
        buttonBackgroundColor: const Color(0xFF1E222B),
        animationCurve: Curves.easeIn,
        index: _pageIndex,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            color: iconColors[0], // Set the color based on index
          ),
          Icon(
            Icons.category_outlined,
            color: iconColors[1], // Set the color based on index
          ),
          Icon(
            Icons.favorite_border,
            color: iconColors[2], // Set the color based on index
          ),
          Icon(
            Icons.more_vert_outlined,
            color: iconColors[3], // Set the color based on index
          ),
        ],
        onTap: (index) {
          setState(() {
            _pageIndex = index;

            // Update the color of icons based on the selected index
            for (int i = 0; i < iconColors.length; i++) {
              if (i == index) {
                iconColors[i] = const Color(0xFFE0B420); // Selected icon color
              } else {
                iconColors[i] =
                    const Color.fromARGB(255, 42, 46, 54); // Default color
              }
            }

            // Scroll to the selected page
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
            );
          });
        },
      ),
    );
  }
}
