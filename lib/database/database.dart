import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:block/dao/application.dao.dart';
import 'package:block/models/application.model.dart';
import 'package:floor/floor.dart';


part 'database.g.dart';


const _entities = [
  ApplicationBlockOpenModel,
];


@Database(version: 1, entities: _entities)
abstract class BlockDataBase extends FloorDatabase {

  ApplicationBlockOpenDao get applicationBlockOpen;
}
