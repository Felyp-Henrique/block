import 'package:block/features/homepage/domain/entities/application.dart';
import 'package:dartz/dartz.dart';
import 'package:block/core/error/failures.dart';

abstract class ApplicationRespositoryBase {
  
  Future<List<ApplicationEntity>> all();

  Future<ApplicationEntity> find(int id);

  Future<void> create(ApplicationEntity application);

  Future<void> update(int id, ApplicationEntity application);

  Future<void> delete(int id);
}
