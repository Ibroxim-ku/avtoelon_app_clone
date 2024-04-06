import 'package:avto_elon_clone/feature/favourite/view_model/favourite_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Announcement extends ConsumerWidget {
  const Announcement({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(favouriteNotifier);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset(
            "assets/images/elon_image.jpg",
          ),
          const SizedBox(
            height: 26,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 50,
            child: CupertinoButton(
              color: Colors.blue,
              child: const Text("Asosiy sahifaga o'tish"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
