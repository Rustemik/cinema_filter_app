import 'package:cinema_filter_app/models/cinema_model.dart';
import 'package:flutter/material.dart';

class AddCinemaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Scaffold(
        body: SingleChildScrollView(
          //padding: EdgeInsets.all(10),
          //reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                'Добавить фильм',
                style: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Rostov',
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Название фильма",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: const Color.fromARGB(255, 243, 243, 243),
                    filled: true,
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 93, 93, 93),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                width: double.infinity,
              ),
              SizedBox(height: 10),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Продолжительность",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: const Color.fromARGB(255, 243, 243, 243),
                    filled: true,
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 93, 93, 93),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  //obscureText: true,
                  //keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                width: double.infinity,
                padding: EdgeInsets.only(top: 10.0),
              ),
              SizedBox(height: 10),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Постер",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: const Color.fromARGB(255, 243, 243, 243),
                    filled: true,
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 93, 93, 93),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  //obscureText: true,
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                width: double.infinity,
                padding: EdgeInsets.only(top: 10.0),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
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
                    // setState(() {
                    //   selectedCategory = value;
                    // });
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
                    DropdownMenuEntry(
                        value: Categories.Action, label: 'Боевик'),
                    DropdownMenuEntry(value: Categories.Drama, label: 'Драма'),
                    DropdownMenuEntry(
                        value: Categories.Thriller, label: 'Триллер'),
                    DropdownMenuEntry(
                        value: Categories.History, label: 'История'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: MaterialButton(
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.add,
                    size: 35,
                    color: Color.fromARGB(255, 0, 174, 255),
                  ),
                  color: Color(0xFF382F42),
                  onPressed: () {},
                  //color: Theme.of(context).canvasColor,
                  height: 75,
                  minWidth: 75,

                  // child: Text(
                  //   "Добавить",
                  //   style: TextStyle(
                  //       fontSize: 20.0,
                  //       color: const Color.fromARGB(255, 200, 44, 44)),
                  // ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
