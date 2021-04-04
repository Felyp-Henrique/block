import 'package:block/models/application.model.dart';
import 'package:floor/floor.dart';


@dao
abstract class ApplicationBlockOpenDao {

  @Query("select * from application_block_open")
  Future<ApplicationBlockOpenModel?> all();
}
