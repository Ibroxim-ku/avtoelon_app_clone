import 'package:avto_elon_clone/feature/chat/view_model/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminChatPage extends ConsumerWidget {
  const AdminChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(chatNotifier);
    var con = ref.read(chatNotifier);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          "Avtoelon.uz | Admin",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: con.buildUi(),
    );
  }
}
