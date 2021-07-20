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

  Map<String, dynamic> toMap([ bool withId = true ]) {
    Map<String, Object> data = {};

    if (withId) {
      data["id"] = this.id;
    }

    data["name"] = this.name;
    data["package"] = this.package;
    data["is_blocked"] = this.is_blocked;
    
    return data;
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
