import 'package:flutter/material.dart';


class ChatMessage {
  final String message;
  final bool isUserMessage;

  ChatMessage(this.message, this.isUserMessage);
}

class ChatProvider with ChangeNotifier {
  List<ChatMessage> _chatMessages = [];

  List<ChatMessage> get chatMessages => _chatMessages;

  void addMessage(ChatMessage message) {
    _chatMessages.add(message);
    notifyListeners();
  }
  void sendMessage(String message) {
    // Di sini Anda dapat menambahkan logika untuk mengirim pesan ke chatbot atau server.
    // Setelah menerima balasan dari chatbot atau server, Anda dapat menambahkannya ke daftar chatMessages.
    // Misalnya:
    addMessage(ChatMessage(message, true)); // Pesan dari pengguna
    // Tambahkan logika untuk mengirim pesan ke chatbot atau server
    // Setelah menerima balasan, tambahkan balasan chatbot ke chatMessages
    addMessage(ChatMessage("Balasan dari chatbot", false)); // Contoh balasan chatbot
  }
}