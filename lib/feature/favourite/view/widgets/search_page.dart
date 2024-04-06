import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset(
            "assets/images/search.jpg",
          ),
          const SizedBox(
            height: 26,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 50,
            child: CupertinoButton(
              color: Colors.blue,
              child: const Text("Poisk"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
