import 'package:cinema_filter_app/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final words = provider.favorites;

    final word = words;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Избранное',
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontFamily: 'Rostov',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: words.length,
                itemBuilder: (context, index) {
                  final favoriteItem = words[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 215, 215, 215),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 0, 174, 255),
                                blurRadius: 6,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                //padding: EdgeInsets.all(10),
                                width: 65,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(favoriteItem.imagePath),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    favoriteItem.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    favoriteItem.category.name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    favoriteItem.release,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    favoriteItem.time,
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
                        top: 4,
                        left: 65,
                        child: IconButton(
                          onPressed: () {
                            provider.toggleFavorites(word[index]);
                          },
                          icon: provider.isExist(word[index])
                              ? const Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(255, 0, 174, 255),
                                )
                              : const Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
