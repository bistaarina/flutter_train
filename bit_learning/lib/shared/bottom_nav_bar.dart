import 'package:flutter/material.dart';
import 'package:bit_learning/screens/home_screen.dart';
import 'package:bit_learning/screens/product_des_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    ProductDesScreen(
      title: 'Calendar',
      rating: '4.5',
      img: 'https://example.com/calendar.jpg',
      desc: 'Calendar page placeholder.',
    ),
    ProductDesScreen(
      title: 'Search',
      rating: '4.0',
      img: 'https://example.com/search.jpg',
      desc: 'Search page placeholder.',
    ),
    ProductDesScreen(
      title: 'Profile',
      rating: '4.2',
      img: 'https://example.com/profile.jpg',
      desc: 'Profile page placeholder.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: CustomBottomNavBar(
          selectedIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal.shade400, Colors.cyan.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _navItem(Icons.home, 0),
          _navItem(Icons.calendar_month, 1),
          _navItem(Icons.search, 2),
          _navItem(Icons.person, 3),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, int index) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 25,
            width: 40,
            child: Icon(
              icon,
              size: 26,
              color: isSelected ? Colors.yellowAccent : Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          if (isSelected)
            Container(
              width: 20,
              height: 3,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
        ],
      ),
    );
  }
}
