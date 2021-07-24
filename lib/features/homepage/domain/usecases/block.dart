import 'package:block/core/domain/usecases.dart';
import 'package:block/features/homepage/domain/entities/application.dart';
import 'package:block/features/homepage/domain/repositories/applications.dart';

class BlockParam extends ParamBase<int> {

  BlockParam(final int value) {
    this.value = value;
  }
}

class BlockUseCase extends UseCaseBase<void, BlockParam> {

  ApplicationRespositoryBase respository;

  BlockUseCase(this.respository) : super();

  @override
  Future<void> execute([ParamBase<BlockParam>? parans]) async {
    if (parans == null) {
      return;
    }

    int id = parans.value as int;

    ApplicationEntity? app = await respository.find(id);
    
    await respository.update(id, app);
  }
}
