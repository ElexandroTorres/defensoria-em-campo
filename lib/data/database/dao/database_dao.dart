import 'package:defensoriaemcampo/data/database/entity/assistido_database_contract.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class DatabaseDao {
  static const databaseVersion = 1;
  static const _databaseName = 'assistido_database.db';

  Database? _database;

  @protected
  Future<Database> getDatabase() async {
    _database ??= await _getDatabase();
    return _database!;
  }

  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (database, version) async {
        final batch = database.batch();
        _createAssistidoTableVersion1(batch);
        await batch.commit();
      },
      version: databaseVersion,
    );
  }

  void _createAssistidoTableVersion1(Batch batch) {
    batch.execute(
      '''
      CREATE TABLE ${AssistidoDatabaseContract.assistidoTable}(
      ${AssistidoDatabaseContract.idDatabaseColumn} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${AssistidoDatabaseContract.id} TEXT NOT NULL,
      ${AssistidoDatabaseContract.nomeColumn} TEXT NOT NULL,
      ${AssistidoDatabaseContract.cpfColumn} TEXT NULL,
      ${AssistidoDatabaseContract.idadeColumn} INTEGER NULL,
      ${AssistidoDatabaseContract.sexoColumn} TEXT NULL,
      ${AssistidoDatabaseContract.demandaColumn} TEXT NOT NULL
      );
      ''',
    );
  }
}
