import 'package:shared_preferences/shared_preferences.dart';

///
/// storage service
///
class StorageService {
  Prefs prefs = Prefs();
}

class Prefs {
  static const String _email = "email";

  SharedPreferences _prefs;

  /// constructor
  Prefs() {
    SharedPreferences.getInstance().then((prefs) {
      _prefs = prefs;
    });
  }

  ///
  /// set email
  ///
  void setEmail(String email) {
    _prefs.setString(_email, email);
  }

  ///
  /// QWANのアクセストークンを取得する
  ///
  String getEmail() {
    return _prefs.getString(_email);
  }
}