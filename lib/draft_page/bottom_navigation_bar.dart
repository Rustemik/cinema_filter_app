import 'package:cinema_filter_app/styles/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBar extends StatefulWidget {
  final Function goToRoute;
  const BottomNavigationBar({required this.goToRoute, super.key});

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  final items = [
    const Icon(Icons.home, size: 25),
    const Icon(Icons.favorite, size: 25),
    const Icon(Icons.add, size: 25),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 174, 255)),
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
    );
  }
}
