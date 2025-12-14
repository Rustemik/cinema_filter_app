import 'package:cinema_filter_app/draft_page/add_cinema_screen.dart';
import 'package:cinema_filter_app/draft_page/cinema_filter_home.dart';
import 'package:cinema_filter_app/favorite_provider.dart';
import 'package:cinema_filter_app/home.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FavoriteProvider(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(title: 'КиноФильтр'),
        ));
  }
}



// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),

//       home: CinemaFilterHome(),
//       //AddCinemaPage(),
//     );
//   }
// }