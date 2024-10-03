import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:list_client_flutter/model/client.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part "database.g.dart";

class ClientTable extends Table {
  IntColumn get id => integer().named("id").autoIncrement()();
  TextColumn get name => text().named("name")();
  TextColumn get horario => text().named("horario")();
  DateTimeColumn get dateCreate => dateTime().named("dateCreate")();
  DateTimeColumn get dateUpdate => dateTime().named("dateUpdate")();
}

@DriftDatabase(tables: [ClientTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> insertListin(Client listin) async {
    ClientTableCompanion novaLinha = ClientTableCompanion(
      name: Value(listin.name),
      horario: Value(listin.horario),
      dateCreate: Value(listin.dateCreate),
      dateUpdate: Value(listin.dateUpdate),
    );

    return await into(clientTable).insert(novaLinha);
  }

  Future<List<Client>> getListins() async {
    List<Client> temp = [];

    List<ClientTableData> listData = await select(clientTable).get();

    for (ClientTableData row in listData) {
      temp.add(Client(
        id: row.id.toString(),
        name: row.name,
        horario: row.horario,
        dateCreate: row.dateCreate,
        dateUpdate: row.dateUpdate,
      ));
    }

    return temp;
  }

  Future<bool> updateListin(Client listin) async {
    return await update(clientTable).replace(ClientTableCompanion(
      id: Value(int.parse(listin.id)),
      name: Value(listin.name),
      horario: Value(listin.horario),
      dateCreate: Value(listin.dateCreate),
      dateUpdate: Value(listin.dateUpdate),
    ));
  }

  Future<int> deleteListin(int id) async {
    return await (delete(clientTable)..where((row) => row.id.equals(id))).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, "db.sqlite"));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    return NativeDatabase.createInBackground(file);
  });
}
