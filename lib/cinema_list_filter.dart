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
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            height: 50,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fillColor: const Color.fromARGB(255, 243, 243, 243),
                  filled: true,
                  labelText: 'Поиск фильма',
                  labelStyle: TextStyle(
                    color: Color(0xFF382F42),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Radio(
                    activeColor: Color.fromARGB(255, 0, 174, 255),
                    value: null,
                    groupValue: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  ),
                  Text(
                    'Все',
                    style: categoryTitleStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  Radio(
                    activeColor: Color.fromARGB(255, 0, 174, 255),
                    value: Categories.Fantasy,
                    groupValue: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  ),
                  Text(
                    'Фантастика',
                    style: categoryTitleStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  Radio(
                    activeColor: Color.fromARGB(255, 0, 174, 255),
                    value: Categories.Action,
                    groupValue: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  ),
                  Text(
                    'Боевик',
                    style: categoryTitleStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  Radio(
                    activeColor: Color.fromARGB(255, 0, 174, 255),
                    value: Categories.Drama,
                    groupValue: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  ),
                  Text(
                    'Драма',
                    style: categoryTitleStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  Radio(
                    activeColor: Color.fromARGB(255, 0, 174, 255),
                    value: Categories.Thriller,
                    groupValue: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  ),
                  Text(
                    'Триллер',
                    style: categoryTitleStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  Radio(
                    activeColor: Color.fromARGB(255, 0, 174, 255),
                    value: Categories.History,
                    groupValue: selectedCategory,
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                  ),
                  Text(
                    'История',
                    style: categoryTitleStyle,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(child: CinemaList(filter, selectedCategory)),
        ],
      ),
    );
  }
}
