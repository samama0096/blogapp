import 'package:shared_preferences/shared_preferences.dart';

class Pref {
  static saveLoginData(String username, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString('password', password);
  }

  static removeLoginData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('username');
    prefs.remove('password');
    return true;
  }

  static getProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = prefs.getString('username') ?? "";
    return username;
  }
}

var nameOfUser = Pref.getProfile();
