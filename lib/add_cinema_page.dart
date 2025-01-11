import 'package:cinema_filter_app/cinema_list_filter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class AddCinemaPage extends StatefulWidget {
  const AddCinemaPage({super.key});

  @override
  State<AddCinemaPage> createState() => _CinemaFilterHomeState();
}

class _CinemaFilterHomeState extends State<AddCinemaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        color: Color(0xFF382F42),
        //animationDuration: Duration(microseconds: 300),
        onTap: (index) {
          setState(() {});
        },
        items: [
          Icon(
            Icons.home,
            color: Color.fromARGB(255, 0, 174, 255),
            //size: 20,
          ),
          Icon(
            Icons.add,
            color: Color.fromARGB(255, 0, 174, 255),
            size: 40,
          ),
          Icon(
            Icons.favorite,
            color: Color.fromARGB(255, 0, 174, 255),
            //size: 20,
          ),
        ],
      ),
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
      body: CinemaListFilter(),
    );
  }
}
