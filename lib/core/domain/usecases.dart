
abstract class UseCaseBase {

  void execute([List<dynamic> args = const []]);
}

abstract class UseCaseResultBase <T> {

  T execute([List<dynamic> args = const []]);
}
