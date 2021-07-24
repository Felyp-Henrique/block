
abstract class ParamBase <T> {
  late final T value;
}

abstract class UseCaseBase<T, P extends ParamBase> {

  T execute([ParamBase<P>? parans = null]);
}
