import 'package:cinema_filter_app/cinema_list.dart';
import 'package:cinema_filter_app/models/cinema_model.dart';
import 'package:cinema_filter_app/styles/styles.dart';
import 'package:flutter/material.dart';

class CinemaListFilter extends StatefulWidget {
  const CinemaListFilter({
    super.key,
  });

  @override
  State<CinemaListFilter> createState() => _CartListFilterState();
}

class _CartListFilterState extends State<CinemaListFilter> {
  String filter = '';
  Categories? selectedCategory = null;
  final filterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            height: 60,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fillColor: const Color.fromARGB(255, 243, 243, 243),
                  filled: true,
                  labelText: 'Поиск фильма',
                  labelStyle: TextStyle(
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
          SizedBox(height: 10),

          Align(
            alignment: Alignment.bottomRight,
            child: DropdownMenu(
              inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30),
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

              initialSelection: Colors.amber, //Color(0xFF382F42),
              label: Text('Жанр'),
              width: 180, //width: double.infinity,
              dropdownMenuEntries: <DropdownMenuEntry>[
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

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Column(
          //       children: [
          //         Radio(
          //           activeColor: Color.fromARGB(255, 0, 174, 255),
          //           value: null,
          //           groupValue: selectedCategory,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedCategory = value;
          //             });
          //           },
          //         ),
          //         Text(
          //           'Все',
          //           style: categoryTitleStyle,
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Radio(
          //           activeColor: Color.fromARGB(255, 0, 174, 255),
          //           value: Categories.Fantasy,
          //           groupValue: selectedCategory,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedCategory = value;
          //             });
          //           },
          //         ),
          //         Text(
          //           'Фантастика',
          //           style: categoryTitleStyle,
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Radio(
          //           activeColor: Color.fromARGB(255, 0, 174, 255),
          //           value: Categories.Action,
          //           groupValue: selectedCategory,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedCategory = value;
          //             });
          //           },
          //         ),
          //         Text(
          //           'Боевик',
          //           style: categoryTitleStyle,
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Radio(
          //           activeColor: Color.fromARGB(255, 0, 174, 255),
          //           value: Categories.Drama,
          //           groupValue: selectedCategory,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedCategory = value;
          //             });
          //           },
          //         ),
          //         Text(
          //           'Драма',
          //           style: categoryTitleStyle,
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Radio(
          //           activeColor: Color.fromARGB(255, 0, 174, 255),
          //           value: Categories.Thriller,
          //           groupValue: selectedCategory,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedCategory = value;
          //             });
          //           },
          //         ),
          //         Text(
          //           'Триллер',
          //           style: categoryTitleStyle,
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Radio(
          //           activeColor: Color.fromARGB(255, 0, 174, 255),
          //           value: Categories.History,
          //           groupValue: selectedCategory,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedCategory = value;
          //             });
          //           },
          //         ),
          //         Text(
          //           'История',
          //           style: categoryTitleStyle,
          //         ),
          //       ],
          //     ),
          //   ],
          // ),

          SizedBox(height: 20),
          Expanded(child: CinemaList(filter, selectedCategory)),
        ],
      ),
    );
  }
}
