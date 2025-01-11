import 'package:cinema_filter_app/cinema_card.dart';
import 'package:cinema_filter_app/models/cinema_model.dart';
import 'package:flutter/material.dart';

class CinemaList extends StatelessWidget {
  String filter;
  Categories? selectedCategory;

  CinemaList(
    this.filter,
    this.selectedCategory, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var filteredItems = cinemaItems
        .where((c) => c.name.toLowerCase().contains(filter.toLowerCase()))
        .where(
            (c) => selectedCategory == null || c.category == selectedCategory)
        .toList();

    return ListView.builder(
      itemCount: filteredItems.length,
      itemBuilder: (context, index) => CinemaCard(item: filteredItems[index]),
    );
  }
}
