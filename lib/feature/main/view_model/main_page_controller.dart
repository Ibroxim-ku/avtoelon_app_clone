import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainNotifier = ChangeNotifierProvider((ref) => MainNotifier());

class MainNotifier with ChangeNotifier {
  int currentIndex = 0;

  void onTap(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
