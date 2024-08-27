import 'package:defensoriaemcampo/data/database/dao/database_dao.dart';
import 'package:defensoriaemcampo/data/database/entity/assistido_database_contract.dart';
import 'package:defensoriaemcampo/data/database/entity/assistido_database_entity.dart';
import 'package:sqflite/sqflite.dart';

class AssistidoDao extends DatabaseDao {
  Future<List<AssistidoDatabaseEntity>> getAll({
    int? limit,
    int? offset,
  }) async {
    final Database database = await getDatabase();
    final List<Map<String, dynamic>> maps = await database.query(
      AssistidoDatabaseContract.assistidoTable,
      limit: limit,
      offset: offset,
      orderBy: '${AssistidoDatabaseContract.idDatabaseColumn} ASC',
    );
    return List.generate(maps.length, (index) {
      return AssistidoDatabaseEntity.fromJson(maps[index]);
    });
  }

  Future<void> insert(AssistidoDatabaseEntity entity) async {
    final Database database = await getDatabase();
    await database.insert(
      AssistidoDatabaseContract.assistidoTable,
      entity.toJson(),
    );
  }

  Future<void> insertAll(List<AssistidoDatabaseEntity> entities) async {
    final Database database = await getDatabase();
    await database.transaction((transaction) async {
      for (final entity in entities) {
        await transaction.insert(
          AssistidoDatabaseContract.assistidoTable,
          entity.toJson(),
        );
      }
    });
  }

  Future<void> update(AssistidoDatabaseEntity entity) async {
    final Database database = await getDatabase();
    await database.update(
      AssistidoDatabaseContract.assistidoTable,
      entity.toJson(),
      where: '${AssistidoDatabaseContract.idDatabaseColumn} = ?',
      whereArgs: [entity.id],
    );
  }

  Future<void> delete(int id) async {
    final Database database = await getDatabase();
    await database.delete(
      AssistidoDatabaseContract.assistidoTable,
      where: '${AssistidoDatabaseContract.idDatabaseColumn} = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteAll() async {
    final Database database = await getDatabase();
    await database.delete(AssistidoDatabaseContract.assistidoTable);
  }
}
