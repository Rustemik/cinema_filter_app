import 'package:flutter/material.dart';

class CinemaModel {
  String name;
  Categories category;
  int release;
  double time;
  Image images;

  CinemaModel(this.name, this.category, this.release, this.time, this.images);
}

enum Categories { Fantasy, Action, Drama, Thriller, History }

List<CinemaModel> cinemaItems = [
  CinemaModel('Интерстеллар', Categories.Fantasy, 2014, 2.49,
      Image.asset('assets/images/Interstellar.jpg')),
  CinemaModel('Побег из Шоушенка', Categories.Drama, 1994, 2.22,
      Image.asset('assets/images/shawshank_redemption.jpg')),
  CinemaModel('Зеленая миля', Categories.Drama, 1999, 3.09,
      Image.asset('assets/images/green_mile.jpg')),
  CinemaModel('Остров проклятых', Categories.Thriller, 2009, 2.18,
      Image.asset('assets/images/shutter_island.jpg')),
  CinemaModel('Леон', Categories.Action, 1994, 2.13,
      Image.asset('assets/images/leon.jpg')),
  CinemaModel('Начало', Categories.Fantasy, 2010, 2.28,
      Image.asset('assets/images/inception.jpg')),
  CinemaModel('Гладиатор', Categories.History, 2000, 2.35,
      Image.asset('assets/images/gladiator.jpeg')),
  CinemaModel('Бойцовский клуб', Categories.Thriller, 1999, 2.19,
      Image.asset('assets/images/fight_club.jpg')),
  CinemaModel('Назад в будущее', Categories.Fantasy, 1985, 1.56,
      Image.asset('assets/images/back_to_the_future.jpg')),
];

  //CinemaModel('Интерстеллар', Categories.Fantasy, 2014, 2.49),
  // CinemaModel('Побег из Шоушенка', Categories.Drama, 1994, 2.22),
  // CinemaModel('Зеленая миля', Categories.Drama, 1999, 3.09),
  // CinemaModel('Остров проклятых', Categories.Thriller, 2009, 2.18),
  // CinemaModel('Леон', Categories.Action, 1994, 2.13),
  // CinemaModel('Начало', Categories.Fantasy, 2010, 2.28),
  // CinemaModel('Гладиатор', Categories.History, 2000, 2.35),
  // CinemaModel('Бойцовский клуб', Categories.History, 1999, 2.19),
  // CinemaModel('Назад в будущее', Categories.Fantasy, 1985, 1.56),
