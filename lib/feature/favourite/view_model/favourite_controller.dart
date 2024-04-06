import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favouriteNotifier =
    ChangeNotifierProvider((ref) => FavouriteController());

class FavouriteController with ChangeNotifier {
  PageController controller = PageController();
  List likedItems = [];
  int currentIndex = 0;
  void isChanged(int value) {
    currentIndex = value;
    notifyListeners();
  }
}
