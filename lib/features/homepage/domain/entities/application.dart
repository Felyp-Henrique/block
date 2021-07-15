import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ApplicationEntity extends Equatable {

  String name;
  String package;
  bool is_blocked;

  @override
  List<Object?> get props => [
    name,
    package,
    is_blocked,
  ];

  ApplicationEntity({
    required this.name,
    required this.package,
    required this.is_blocked,
  }) : super();
}
