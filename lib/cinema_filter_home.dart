import 'package:cinema_filter_app/cinema_list_filter.dart';
import 'package:flutter/material.dart';

class CinemaFilterHome extends StatelessWidget {
  const CinemaFilterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        backgroundColor: Color(0xFF382F42),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
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
                fontSize: 33,
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
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: CinemaListFilter(),
    );
  }
}
