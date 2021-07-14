import 'package:equatable/equatable.dart';

abstract class UseCaseBase extends Equatable {

  void execute([List<dynamic> args = const []]);
}
