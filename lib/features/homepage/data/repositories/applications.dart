import 'package:block/features/homepage/data/datasources/applications.dart';
import 'package:block/features/homepage/domain/entities/application.dart';
import 'package:block/core/error/failures.dart';
import 'package:block/features/homepage/domain/repositories/applications.dart';
import 'package:dartz/dartz.dart';

class ApplicationRepository extends ApplicationRespositoryBase {

  ApplicationDataSourceBase dataSource;

  ApplicationRepository(this.dataSource) : super();

  @override
  Future<Either<FailureBase, List<ApplicationEntity>>> all() async {
    var result = null;
    return Future.value(result);
  }

  @override
  Future<FailureBase> create(ApplicationEntity application) async {
    var result = null;
    return Future.value(result);
  }

  @override
  Future<FailureBase> delete(int id) async {
    var result = null;
    return Future.value(result);
  }

  @override
  Future<Either<FailureBase, ApplicationEntity>> find(int id) async {
    var result = null;
    return Future.value(result);
  }

  @override
  Future<FailureBase> update(ApplicationEntity application) async {
    var result = null;
    return Future.value(result);
  }
}
