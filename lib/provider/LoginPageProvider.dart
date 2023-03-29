import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class LoginProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  void getlogin(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    getlogin(true);
    try {
      Response responce = await post(Uri.parse("https://reqres.in/api/login"),
          body: {'email': email, 'password': password});
      if (responce.statusCode == 200) {
        print('Successful');
        print('failed');
      } else {
        getlogin(true);
        print('failed');
      }
    } catch (e) {
      print(e.toString());
      print('failed');
    }
  }
}
