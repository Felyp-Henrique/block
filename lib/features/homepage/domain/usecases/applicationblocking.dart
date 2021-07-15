import 'package:block/core/domain/usecases.dart';
import 'package:block/features/homepage/domain/repositories/applications.dart';

class ApplicationBlockingUseCase extends UseCaseBase {

  ApplicationRespositoryBase respository;

  ApplicationBlockingUseCase(this.respository) : super();

  @override
  void execute([List<dynamic> args = const []]) {
    
  }
}
