import 'package:fashion_app/screens/cartscreen.dart';
import 'package:fashion_app/screens/explorescreen.dart';
import 'package:fashion_app/screens/mainscreen.dart';
import 'package:fashion_app/screens/profilescreen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  static int currentindex = 0;
  bool _isSearching = false; // State to track search mode
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      const Mainscreen(),
      const ExploreScreen(),
      const CartPage(),
      const Profilescreen(),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: currentindex == 0
          ? AppBar(
              leading: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[900],
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/dot-menu.png',
                    color: Colors.white,
                    height: 25,
                  ),
                ),
              ),
              title: _isSearching
                  ? TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: "Search...",
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white54,
                        ),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                      ),
                      onSubmitted: (query) {
                        // Perform the search logic here
                      },
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "LO",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          'assets/images/oval.png',
                          height: 25,
                          color: Colors.white,
                        ),
                        const Text(
                          "K",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
              centerTitle: true,
              actions: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[900],
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _isSearching = !_isSearching; // Toggle search mode
                        if (!_isSearching) {
                          _searchController
                              .clear(); // Clear search input if search is cancelled
                        }
                      });
                    },
                    icon: _isSearching
                        ? const Icon(
                            Icons.close,
                            color: Colors.white,
                          )
                        : Image.asset(
                            'assets/images/magnifying-glass.png',
                            color: Colors.white,
                            height: 17,
                          ),
                  ),
                ),
              ],
              backgroundColor: const Color.fromARGB(255, 27, 27, 27),
            )
          : appBar,
      body: _screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 86, 86, 86),
        currentIndex: currentindex,
        onTap: (int index) {
          setState(
            () {
              currentindex = index;
            },
          );
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
                size: currentindex == 0 ? 0 : 24,
              ),
              label: 'HOME'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.explore), label: "Explore"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: "Cart"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

AppBar appBar = AppBar(
  leading: IconButton(
    onPressed: () {},
    icon: const Icon(Icons.keyboard_arrow_left_outlined),
  ),
  title: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      const Text(
        "LO",
        style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
      ),
      Image.asset(
        'assets/images/oval.png',
        height: 25,
        color: Colors.white,
      ),
      const Text(
        "K",
        style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
      ),
    ],
  ),
  centerTitle: true,
);
