import 'dart:io';
import 'dart:typed_data';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatNotifier = ChangeNotifierProvider((ref) => ChatController());

class ChatController with ChangeNotifier {
  final Gemini gemini = Gemini.instance;
  ChatUser currentUser = ChatUser(id: "0", firstName: "User");
  ChatUser geminiUser = ChatUser(
    id: "1",
    firstName: "Gemini",
    profileImage: "assets/icons/logo_avtoelon.png",
  );

  List<ChatMessage> messages = [];

  Widget buildUi() {
    return DashChat(
      currentUser: currentUser,
      onSend: _sendMessage,
      messages: messages,
      messageOptions: const MessageOptions(),
    );
  }

  void _sendMessage(ChatMessage chatMessage) {
    messages = [chatMessage, ...messages];
    notifyListeners();
    try {
      String question = chatMessage.text;
      List<Uint8List>? images;
      if (chatMessage.medias?.isNotEmpty ?? false) {
        images = [
          File(chatMessage.medias!.first.url).readAsBytesSync(),
        ];
      }
      gemini.streamGenerateContent(question, images: images).listen(
        (event) {
          ChatMessage? lastMessage = messages.firstOrNull;
          if (lastMessage != null && lastMessage.user == geminiUser) {
            lastMessage = messages.removeAt(0);
            String response = event.content?.parts?.fold(
                    "", (previous, current) => "$previous${current.text}") ??
                "";
            lastMessage.text += response;

            messages = [lastMessage, ...messages];
            notifyListeners();
          } else {
            String response = event.content?.parts?.fold(
                  "",
                  (previous, current) => "$previous${current.text}",
                ) ??
                "";
            ChatMessage message = ChatMessage(
              user: geminiUser,
              createdAt: DateTime.now(),
              text: response,
            );
            messages = [message, ...messages];
            notifyListeners();
          }
        },
      );
    } catch (e) {
      debugPrint("$e");
    }
  }
}
