import 'package:block/features/homepage/domain/entities/application.dart';

// ignore: must_be_immutable
class ApplicationModel extends ApplicationEntity {

  int id;

  ApplicationModel({
    required this.id,
    required String name,
    required String package,
    required bool is_blocked,
  }) : super(
      name: name,
      package: package,
      is_blocked: is_blocked,
    );

  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "name": this.name,
      "package": this.package,
      "is_blocked": this.is_blocked,
    };
  }

  factory ApplicationModel.fromMap(Map<String, dynamic> map) {
    return ApplicationModel(
      id: map['id'],
      name: map['name'],
      package: map['package'],
      is_blocked: map['is_blocked'],
    );
  }
}
