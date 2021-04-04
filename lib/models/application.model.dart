import 'package:block/core/open.core.dart';
import 'package:floor/floor.dart';


@Entity(tableName: "application_block_open")
class ApplicationBlockOpenModel extends BlockOpenArtifact {

  @PrimaryKey(autoGenerate: true)
  int id = 0;

  ApplicationBlockOpenModel({
    this.id: 0,
    required String description,
    required String data,
    required bool status,
  }) {
    this.description = description;
    this.data = data;
    this.status = status;
  }
}
