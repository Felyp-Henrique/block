import 'package:block/features/homepage/domain/entities/application.dart';
import 'package:dartz/dartz.dart';
import 'package:block/core/error/failures.dart';

abstract class ApplicationRespositoryBase {
  
  Future<Either<FailureBase, List<ApplicationEntity>>> all();

  Future<Either<FailureBase, ApplicationEntity>> find(int id);

  Future<FailureBase> create(ApplicationEntity application);

  Future<FailureBase> update(ApplicationEntity application);

  Future<FailureBase> delete(int id);
}
