import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text("Suhbatlar"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset("assets/images/chat_beginner_logo.jpeg"),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Buyerda hozircha jimlik",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Hoxlagan e'lonning sahifasida suhbatni boshlang",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
