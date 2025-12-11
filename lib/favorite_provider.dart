import 'package:cinema_filter_app/models/cinema_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  List<CinemaModel> _favorites = [];
  List<CinemaModel> get favorites => _favorites;

  void toggleFavorites(CinemaModel model) {
    final isExist = _favorites.contains(model);
    if (isExist) {
      _favorites.remove(model);
    } else {
      _favorites.add(model);
    }
    notifyListeners();
  }

  bool isExist(CinemaModel model) {
    final isExist = _favorites.contains(model);
    return isExist;
  }

  void clearFavorites() {
    _favorites = [];
    notifyListeners();
  }

  static FavoriteProvider of(BuildContext context, {bool listen = false}) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
