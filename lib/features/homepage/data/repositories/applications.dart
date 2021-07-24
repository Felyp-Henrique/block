import 'package:block/features/homepage/data/datasources/applications.dart';
import 'package:block/features/homepage/data/models/application.dart';
import 'package:block/features/homepage/domain/entities/application.dart';
import 'package:block/features/homepage/domain/repositories/applications.dart';

class ApplicationRepository extends ApplicationRespositoryBase {

  ApplicationDataSourceBase dataSource;

  ApplicationRepository(this.dataSource) : super();

  @override
  Future<List<ApplicationEntity>> all() async {
    return await dataSource.all() as List<ApplicationEntity>;
  }

  @override
  Future<void> create(ApplicationEntity application) async {
    await dataSource.create(application as ApplicationModel);
  }

  @override
  Future<void> delete(int id) async {
    await dataSource.delete(id);
  }

  @override
  Future<ApplicationEntity> find(int id) async {
    return await dataSource.find(id) as ApplicationEntity;
  }

  @override
  Future<void> update(int id, ApplicationEntity application) async {
    await dataSource.update(id, application as ApplicationModel);
  }
}
