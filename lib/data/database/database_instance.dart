import 'package:list_client_flutter/data/database/database.dart';

class DatabaseInstance {
  static AppDatabase? _instance;

  static AppDatabase get instance {
    _instance ??= AppDatabase();
    return _instance!;
  }

  static Future<void> closeDatabase() async {
    await _instance?.closeDatabase();
    _instance = null;
  }
}