import 'package:avto_elon_clone/data/entity/detail_model.dart';
import 'package:avto_elon_clone/feature/home/view/widgets/w_expandtile.dart';
import 'package:avto_elon_clone/feature/main/view_model/main_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeController = ChangeNotifierProvider((ref) => HomeController());

class HomeController with ChangeNotifier {
  HomeController() {
    initState();
  }

  void initState() {
    init();
  }

  List<String> categoriesItem = [
    "assets/images/plus_ion.png",
    "assets/images/gentra_image.png",
    "assets/images/yuk_mashina.png",
    "assets/images/ehtiyot_qism.png",
    "assets/images/traktor_image.jpeg",
    "assets/images/tamirlash.jpeg",
  ];

  List<String> categories = [
    "Sotish",
    "Avtomabillar",
    "Yuk mashinalari",
    "Avto ehtiyot qismlar",
    "Maxsus texnika",
    "Ta'mirlash va xizmatlar"
  ];
  //for appbar
  bool isTapped = false;
  void onTapped() {
    isTapped = !isTapped;
    notifyListeners();
  }

  int currentIndex = 0;
  void onTapLiked(int index) {
    details[index].isLiked = !details[index].isLiked;
    notifyListeners();
  }

  final ScrollController controller = ScrollController();
  Widget scrollLocation = const Text(
    "avtoelon.uz",
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );

  late Widget currentLocation;

  Widget scrollBar =
      Icon(MainNotifier().currentIndex == 0 ? Icons.home : Icons.home_outlined);

  late Widget currentBar;

  void init() {
    controller.addListener(listenScrolAllMoment);
  }

  void listenScrolAllMoment() {
    void toTop() {
      controller.animateTo(
        controller.position.minScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    }

    if (controller.offset == controller.position.minScrollExtent) {
      currentLocation = const Text(
        "avtoelon.uz",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      );
      scrollBar = const SizedBox.shrink();
    } else if (controller.offset > 300) {
      currentLocation = const WExpandableTile();
      currentBar = IconButton(
        onPressed: () {
          toTop();
        },
        icon: const Icon(Icons.arrow_upward),
      );
    }

    scrollLocation = currentLocation;
    notifyListeners();
    scrollBar = currentBar;
    notifyListeners();
  }
}
