import 'package:cinema_filter_app/favorite_provider.dart';
import 'package:cinema_filter_app/models/cinema_model.dart';
import 'package:cinema_filter_app/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:icon_checkbox/icon_checkbox.dart';
import 'package:provider/provider.dart';

class CinemaCard extends StatefulWidget {
  const CinemaCard({
    super.key,
    required this.model,
  });

  final CinemaModel model;

  @override
  State<CinemaCard> createState() => _CinemaCardState();
}

class _CinemaCardState extends State<CinemaCard> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 215, 215, 215),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  offset: Offset(4, 6),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 65,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(widget.model.imagePath),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.model.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.model.category.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.model.release,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.model.time,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 70,
          child: IconCheckbox(
            unCheckColor: appBarcolor,
            checkedIcon: Icons.favorite,
            uncheckedIcon: Icons.favorite_border_sharp,
            checkColor: Color.fromARGB(255, 0, 174, 255),
            value: provider.favorites.contains(widget.model),
            onChanged: (value) {
              provider.toggleFavorites(widget.model);
            },
          ),
        ),
      ],
    );
  }
}
