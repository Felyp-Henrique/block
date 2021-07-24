import 'package:sqflite/sqflite.dart';

mixin SQFLiteQueryMixin {

  late String path;
  late Database db;

  Future<void> connect() async {
    db = await openDatabase(path);
  }

  Future<void> disconnect() async {
    await db.close();
  }

  Future<T> execute<T>(Function(Database db) callback) async {
    try {
      await this.connect();
      return await callback(db);
    } finally {
      await this.disconnect();
    }
  }

  Future<void> voidExecute(Function(Database db) callback) async {
    try {
      await this.connect();
      await callback(db);
    } finally {
      await this.disconnect();
    }
  }
}
