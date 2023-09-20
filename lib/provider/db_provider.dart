import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suuz/register/user_register.dart';
import 'package:suuz/util/snacbar.dart';

class DatabaseProvider extends ChangeNotifier {
  final Future<SharedPreferences> _userData = SharedPreferences.getInstance();
  String _name = '';
  String _surname = '';
  String _faculty = '';
  String _year = '';
  bool _firstTime = true;

  String get name => _name;
  String get surname => _surname;
  String get faculty => _faculty;
  String get year => _year;
  bool get firstTime => _firstTime;

  void saveFirsTime(bool firstTime) async {
    SharedPreferences value = await _userData;
    value.setBool("firstTime", firstTime);
  }

  void saveName(String name) async {
    SharedPreferences value = await _userData;
    value.setString("name", name);
  }

  void saveSurName(String surName) async {
    SharedPreferences value = await _userData;
    value.setString("surName", surName);
  }

  void saveFaculty(String faculty) async {
    SharedPreferences value = await _userData;
    value.setString("faculty", faculty);
  }

  void saveYear(String year) async {
    SharedPreferences value = await _userData;
    value.setString("year", year);
  }

  void logout(BuildContext context) async {
    SharedPreferences value = await _userData;
    value.clear();
    Navigator.pushAndRemoveUntil(
        context,
        PageTransition(child: UserRegister(), type: PageTransitionType.fade),
        (route) => false);
    showMessage("Xayr", context);
  }

  Future<bool> getFirstTime() async {
    SharedPreferences value = await _userData;
    if (value.containsKey('firstTime')) {
      bool data = value.getBool("firstTime")!;
      _firstTime = data;
      notifyListeners();
      return data;
    } else {
      _firstTime = true;
      notifyListeners();
      return true;
    }
  }

  Future<String> getName() async {
    SharedPreferences value = await _userData;
    if (value.containsKey('name')) {
      String data = value.getString("name")!;
      _name = data;
      notifyListeners();
      return data;
    } else {
      _name = '';
      notifyListeners();
      return "";
    }
  }

  Future<String> getSurname() async {
    SharedPreferences value = await _userData;
    if (value.containsKey('surName')) {
      String data = value.getString("surName")!;
      _surname = data;
      notifyListeners();
      return data;
    } else {
      _surname = '';
      notifyListeners();
      return "";
    }
  }

  Future<String> getFaculty() async {
    SharedPreferences value = await _userData;
    if (value.containsKey('faculty')) {
      String data = value.getString("faculty")!;
      _faculty = data;
      notifyListeners();
      return data;
    } else {
      _faculty = '';
      notifyListeners();
      return "";
    }
  }

  Future<String> getYear() async {
    SharedPreferences value = await _userData;
    if (value.containsKey('year')) {
      String data = value.getString("year")!;
      _year = data;
      notifyListeners();
      return data;
    } else {
      _year = '';
      notifyListeners();
      return "";
    }
  }
}
