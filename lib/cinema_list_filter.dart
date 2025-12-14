import 'package:cinema_filter_app/cinema_list.dart';
import 'package:cinema_filter_app/models/cinema_model.dart';
import 'package:cinema_filter_app/styles/colors.dart';
import 'package:flutter/material.dart';

class CinemaListFilter extends StatefulWidget {
  const CinemaListFilter({
    super.key,
  });

  @override
  State<CinemaListFilter> createState() => _CartListFilterState();
}

class _CartListFilterState extends State<CinemaListFilter> {
  //final words = CinemaCard(model: cinemaItems.first);

  String filter = '';
  Categories? selectedCategory = null;
  final filterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            height: 60,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fillColor: const Color.fromARGB(255, 243, 243, 243),
                  filled: true,
                  labelText: 'Поиск фильма',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 108, 108, 108),
                    fontWeight: FontWeight.bold,
                  )),
              onChanged: (newValue) => {
                setState(() {
                  filter = newValue;
                })
              },
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomRight,
            child: DropdownMenu(
              inputDecorationTheme: const InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  hoverColor: Colors.red,
                  focusColor: Colors.red,
                  fillColor: Colors.red),
              onSelected: (value) {
                setState(() {
                  selectedCategory = value;
                });
              },
              initialSelection: appBarcolor,
              label: const Text('Жанр'),
              width: 180,
              dropdownMenuEntries: const <DropdownMenuEntry>[
                DropdownMenuEntry(
                  value: null,
                  label: 'Все',
                ),
                DropdownMenuEntry(
                    value: Categories.Fantasy, label: 'Фантастика'),
                DropdownMenuEntry(value: Categories.Action, label: 'Боевик'),
                DropdownMenuEntry(value: Categories.Drama, label: 'Драма'),
                DropdownMenuEntry(value: Categories.Thriller, label: 'Триллер'),
                DropdownMenuEntry(value: Categories.History, label: 'История'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(child: CinemaList(filter, selectedCategory)),
        ],
      ),
    );
  }
}
