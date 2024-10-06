import 'package:drift/drift.dart';
import 'package:list_client_flutter/data/database/database.dart';
import 'package:list_client_flutter/data/model/client.dart';

part 'client_DAO.g.dart';

@DriftAccessor(tables: [ClientTable])
class ClientDao extends DatabaseAccessor<AppDatabase> with _$ClientDaoMixin {
  ClientDao(super.attachedDatabase);

  Future<int> insertClient(Client client) async {
    ClientTableCompanion novaLinha = ClientTableCompanion(
      name: Value(client.name),
      horario: Value(client.horario),
      descricao: Value(client.descricao),
      dateCreate: Value(client.dateCreate),
      dateUpdate: Value(client.dateUpdate),
    );

    return await into(clientTable).insert(novaLinha);
  }

  Future<List<Client>> getClients() async {
    List<ClientTableData> listData = await select(clientTable).get();

    return listData
        .map((row) => Client(
              id: row.id.toString(),
              name: row.name,
              horario: row.horario,
              descricao: row.descricao,
              dateCreate: row.dateCreate,
              dateUpdate: row.dateUpdate,
            ))
        .toList();
  }

  Future<bool> updateClient(Client client) async {
    return await update(clientTable).replace(ClientTableCompanion(
      id: Value(int.parse(client.id)),
      name: Value(client.name),
      horario: Value(client.horario),
      descricao: Value(client.descricao),
      dateCreate: Value(client.dateCreate),
      dateUpdate: Value(client.dateUpdate),
    ));
  }

  Future<int> deleteClient(int id) async {
    return await (delete(clientTable)..where((row) => row.id.equals(id))).go();
  }

  Future<List<Client>> searchClients(String query) async {
    final List<ClientTableData> results = await (select(clientTable)
          ..where((t) =>
              t.name.like('%$query%') |
              t.descricao.like('%$query%') |
              t.horario.like('%$query%')))
        .get();

    return results
        .map((row) => Client(
              id: row.id.toString(),
              name: row.name,
              horario: row.horario,
              descricao: row.descricao,
              dateCreate: row.dateCreate,
              dateUpdate: row.dateUpdate,
            ))
        .toList();
  }
}
