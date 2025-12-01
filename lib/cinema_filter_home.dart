import 'package:cinema_filter_app/add_cinema_screen.dart';
import 'package:cinema_filter_app/cinema_list_filter.dart';
import 'package:cinema_filter_app/favorite_cinema_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CinemaFilterHome extends StatefulWidget {
  const CinemaFilterHome({super.key});

  @override
  State<CinemaFilterHome> createState() => _CinemaFilterHomeState();
}

class _CinemaFilterHomeState extends State<CinemaFilterHome> {
  final items = [
    Icon(Icons.home, size: 25),
    Icon(Icons.favorite, size: 25),
    Icon(Icons.add, size: 25),
  ];
  int index = 0;

  final screens = [
    CinemaListFilter(),
    FavoriteCinemaScreen(),
    AddCinemaScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),

      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          //side: BorderSide(width: 1, color: Color.fromARGB(255, 0, 174, 255)),
        ),
        toolbarHeight: 120,
        backgroundColor: Color(0xFF382F42),
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
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/popcorn.png',
                  ),
                  fit: BoxFit.contain,
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              width: 13,
            ),
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
                //fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        ),
        // centerTitle: true,
        // toolbarHeight: 65,
        // leading: IconButton(
        //   color: Colors.white,
        //   icon: Icon(Icons.video_camera_front_sharp),
        //   onPressed: () {},
        // ),
        //elevation: 0,
      ),

      body: screens[index],
      //extendBody: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 174, 255)),
        ),
        child: CurvedNavigationBar(
          items: items,
          index: index,
          onTap: (index) => setState(() => this.index = index),
          backgroundColor: Colors.transparent,
          color: Color(0xFF382F42),
          //buttonBackgroundColor: Colors.amber,
          height: 55,
          animationDuration: Duration(milliseconds: 300),
        ),
      ),

      // bottomNavigationBar: CurvedNavigationBar(
      //   items: items,
      //   index: index,
      //   onTap: (selectedIndex) {
      //     setState(() {
      //       index = selectedIndex;
      //     });
      //   },
      //   height: 50,
      //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //   color: Color(0xFF382F42),
      //   animationDuration: Duration(milliseconds: 300),
      // ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'Favorites',
      //     ),
      //   ],
      //   // currentIndex: _selectedIndex,
      //   // selectedItemColor: Colors.amber[800],
      //   // onTap: _onItemTapped,
      // ),
    );
  }
}

// Widget getSelectedWidget({required int index}) {
//   Widget widget;
//   switch (index) {
//     case 0:
//       widget = CinemaFilterHome();
//       break;
//     case 1:
//       widget = AddCinemaPage();
//       break;
//     default:
//       widget = CinemaFilterHome();
//       break;
//   }
//   return widget;
// }

//child: getSelectedWidget(index: index),
