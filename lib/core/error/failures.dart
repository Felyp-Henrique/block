import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
abstract class FailureBase extends Equatable {

  @override
  List<Object?> props = [];

  FailureBase([List<Object?> properties = const []]) : super() {
    this.props = properties;
  }
}

/*
 * General failures
 */

class SQLFailure extends FailureBase {}
