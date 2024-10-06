import 'package:flutter/material.dart';
import 'package:list_client_flutter/data/database/client_DAO.dart';
import 'package:list_client_flutter/data/model/client.dart';

class ClientProvider extends ChangeNotifier {
  final ClientDao database;

  ClientProvider(this.database);

  List<Client> _clients = [];
  List<Client> get clients => _clients;

  Future<void> fetchClients() async {
    _clients = await database.getClients();
    notifyListeners();
  }

  Future<void> insertClient(Client client) async {
    await database.insertClient(client);
    _clients = await database.getClients();
    notifyListeners();
  }

  Future<void> updateClient(Client client) async {
    await database.updateClient(client);
    _clients = await database.getClients();
    notifyListeners();
  }

  Future<void> removeClients(int id) async {
    await database.deleteClient(id);
    _clients = await database.getClients();
    notifyListeners();
  }

  Future<void> searchClients(String query) async {
    if (query.isEmpty) {
      _clients = await database.getClients();
    } else {
      _clients = await database.searchClients(query);
    }
    notifyListeners();
  }
}
