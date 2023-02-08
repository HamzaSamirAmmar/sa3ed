import 'package:injectable/injectable.dart';
import 'package:universal_html/html.dart';

/// A Local storage use for web only
/// Here we can store token in web application
/// Don't use SharedPreferences package for web
@lazySingleton
class WebLocalStorage {
  final Storage _storage = window.localStorage;

  /// Save value in local storage (typically token)
  void setString({
    required String key,
    required String value,
  }) {
    _storage[key] = value;
  }

  /// Save value from local storage
  void removeValue({
    required String key,
  }) {
    _storage.remove(key);
  }

  /// Erase local storage
  void clear() {
    _storage.clear();
  }

  /// Get value from local storage
  String? getString({
    required String key,
  }) =>
      _storage[key];
}
