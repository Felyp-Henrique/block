import 'package:block/features/homepage/data/models/application.dart';

abstract class ApplicationDataSourceBase {

  Future<List<ApplicationModel>> all();

  Future<ApplicationModel> find(int id);

  Future<void> create(ApplicationModel application);

  Future<void> update(ApplicationModel application);

  Future<void> delete(int id);
}

class ApplicationDataBaseSoucer extends ApplicationDataSourceBase {

  @override
  Future<List<ApplicationModel>> all() async {
    return Future.value(null);
  }

  @override
  Future<void> create(ApplicationModel application) async {
  }

  @override
  Future<void> delete(int id) async {
  }

  @override
  Future<ApplicationModel> find(int id) async {
    return Future.value(null);
  }

  @override
  Future<void> update(ApplicationModel application) async {
  }
}
