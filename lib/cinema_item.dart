import 'package:cinema_filter_app/models/cinema_model.dart';
import 'package:flutter/material.dart';

class CinemaItem extends StatelessWidget {
  const CinemaItem({
    super.key,
    required this.item,
  });

  final CinemaModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // GridView.builder(
              //   itemCount: cinemaItems.length,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       mainAxisSpacing: 20,
              //       crossAxisSpacing: 20),
              //   itemBuilder: (_, index) {
              //     return Image.asset(cinemaItems[index],
              //         fit: BoxFit.cover, width: 100, height: 100);
              //   },
              // ),

              Container(
                height: 100,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 184, 191, 196),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/no_foto.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // Container(
              //   color: Color.fromARGB(255, 0, 174, 255),
              //   height: 100,
              //   width: 70,
              // ),
              //Image.asset(item.images),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(item.name),
                  Text(item.category.name),
                  Text(item.release.toString()),
                  Text(item.time.toString()),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 20,
        ),
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

