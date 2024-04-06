import 'package:avto_elon_clone/feature/home/view_model/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WExpandableTile extends ConsumerWidget {
  const WExpandableTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(homeController);
    var con = ref.read(homeController);
    return GestureDetector(
      onTap: () {
        con.onTapped();
      },
      child: Row(
        children: [
          const Text(
            "Toifani tanlang",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Icon(con.isTapped
              ? Icons.arrow_drop_up_sharp
              : Icons.arrow_drop_down_sharp),
        ],
      ),
    );
  }
}
