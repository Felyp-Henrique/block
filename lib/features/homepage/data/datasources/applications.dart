import 'package:block/core/utils/datasource.dart';
import 'package:block/features/homepage/data/models/application.dart';

abstract class ApplicationDataSourceBase {

  Future<List<ApplicationModel>> all();

  Future<ApplicationModel> find(int id);

  Future<int> create(ApplicationModel application);

  Future<void> update(int id, ApplicationModel application);

  Future<void> delete(int id);
}

class ApplicationDB extends ApplicationDataSourceBase with SQLQueryMixin {
  
  static final String table = "applications";

  @override
  Future<List<ApplicationModel>> all() async {
    return await execute((db) async {
      return (await db.query(table)).map((e) {
        return ApplicationModel()
          ..fromMap(e);
      });
    });
  }

  @override
  Future<int> create(ApplicationModel application) async {
    return await execute((db) async {
      return await db.insert(table, application.toMap());
    });
  }

  @override
  Future<void> delete(int id) async {
    await voidExecute((db) async {
      await db.delete(
        table,
        where: 'id = ?',
        whereArgs: [id],
      );
    });
  }

  @override
  Future<ApplicationModel> find(int id) async {
    return await execute((db) async {
      return await db.query(
        table,
        where: 'id = ?',
        whereArgs: [id],
      );
    });
  }

  @override
  Future<void> update(int id, ApplicationModel application) async {
    await voidExecute((db) async {
      await db.update(
        table,
        application.toMap(false),
        where: 'id = ?',
        whereArgs: [id],
      );
    });
  }
}
