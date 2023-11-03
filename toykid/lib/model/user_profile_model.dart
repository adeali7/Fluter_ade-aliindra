import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  bool _isLoggedIn = false;
  String _username ='' ;
  String _email = ''; // Tambahkan properti email

  bool get isLoggedIn => _isLoggedIn;
  String get username => _username;
  String get email => _email; // Getter untuk email

  void login(String name, String email, String password) {
    // Simulasikan logika login di sini
    if (email == 'halo@gmail.com' && password == '12345') {
      _isLoggedIn = true;
      _username = name;
      _email = email; // Setel email pengguna
      notifyListeners();
    }
  }

  void logout() {
    _isLoggedIn = false;
    _username = '';
    _email = ''; // Kosongkan email saat logout
    notifyListeners();
  }
}