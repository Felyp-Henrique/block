import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Application extends Equatable {

  String name;
  String package;
  bool isBlocked;

  @override
  List<Object?> get props => [
    name,
    package,
    isBlocked,
  ];

  Application({
    this.name: "",
    this.package: "",
    this.isBlocked: false,
  }) : super();
}
