import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class HomeController {
  List<ChatModel> getChats() {
    return List.generate(20, (index) {
      return ChatModel(
        name: "Chat $index",
        lastMessage: "Last message $index",
        avatar: "A$index", // Just an example for avatar
      );
    });
  }
}
