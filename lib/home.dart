import 'package:cinema_filter_app/cinema_list_filter.dart';
import 'package:cinema_filter_app/favorite.dart';
import 'package:cinema_filter_app/styles/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = [
    const Icon(Icons.home, size: 25),
    const Icon(Icons.favorite, size: 25),
    const Icon(Icons.add, size: 25),
  ];

  int index = 0;

  final screens = [
    const CinemaListFilter(),
    const FavoritePage(),
    //FavoriteCinemaScreen(),
    //AddCinemaScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        toolbarHeight: 90,
        backgroundColor: appBarcolor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 0, 174, 255).withOpacity(0.8),
                    blurRadius: 18,
                    offset: const Offset(1, 1),
                  )
                ],
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/popcorn.png',
                  ),
                  fit: BoxFit.contain,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 13),
            Text(
              "КиноФильтр",
              style: TextStyle(
                shadows: [
                  Shadow(
                    color:
                        const Color.fromARGB(255, 0, 174, 255).withOpacity(0.8),
                    blurRadius: 28,
                    offset: const Offset(1, 1),
                  ),
                ],
                fontFamily: 'Rostov',
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme:
              const IconThemeData(color: Color.fromARGB(255, 0, 174, 255)),
        ),
        child: CurvedNavigationBar(
          items: items,
          index: index,
          onTap: (index) => setState(() => this.index = index),
          backgroundColor: Colors.transparent,
          color: appBarcolor,
          height: 50,
          animationDuration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
