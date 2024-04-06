import 'package:avto_elon_clone/feature/main/view/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 400),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            CupertinoPageRoute(
              builder: (context) => const MainPage(),
            ),
            (route) => false);
      },
    );
    return Scaffold(
      body: Center(
        child: Image.asset(
          fit: BoxFit.cover,
          "assets/images/splash_image.jpeg",
        ),
      ),
    );
  }
}
