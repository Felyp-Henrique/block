import 'package:block/features/homepage/domain/entities/application.dart';


abstract class IModel {

  Map<String, dynamic> toMap([ bool withId = true ]);
  void fromMap(Map<String, dynamic> map);
}


// ignore: must_be_immutable
class ApplicationModel extends ApplicationEntity implements IModel {

  late int id;

  ApplicationModel({
    this.id: 0,
    String name: '',
    String package: '',
    bool is_blocked: false,
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

  void fromMap(Map<String, dynamic> map) {
    this.id = map['id'] ?? 0;
    this.name = map['name'] ?? '';
    this.package = map['package'] ?? '';
    this.is_blocked = map['is_blocked'] ?? false;
  }
}
