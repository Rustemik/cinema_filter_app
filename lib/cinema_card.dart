import 'package:cinema_filter_app/models/cinema_model.dart';
import 'package:flutter/material.dart';
import 'package:icon_checkbox/icon_checkbox.dart';

class CinemaCard extends StatefulWidget {
  const CinemaCard({
    super.key,
    required this.item,
  });

  final CinemaModel item;

  @override
  State<CinemaCard> createState() => _CinemaItemState();
}

class _CinemaItemState extends State<CinemaCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: const Color.fromARGB(255, 215, 215, 215),
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 184, 191, 196),
                      image: DecorationImage(
                        image: AssetImage(
                          widget.item.images,
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconCheckbox(
                        checkedIcon: Icons.favorite,
                        uncheckedIcon: Icons.favorite_border_sharp,
                        checkColor: Color.fromARGB(255, 0, 174, 255),
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                      Text(widget.item.name),
                      Text(widget.item.category.name),
                      Text(widget.item.release.toString()),
                      Text(widget.item.time.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Divider(
        //   height: 20,
        // ),
      ],
    );
  }
}

// class CategoriesImage extends StatelessWidget {
//   AssetImage image;

//   CategoriesImage({super.key, required this.image});

//   @override
//   Widget build(BuildContext context) {
    
//         return AssetImage(image);
//     }
//   }

