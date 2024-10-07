import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:list_client_flutter/data/database/client_DAO.dart';
import 'package:list_client_flutter/data/model/client.dart';

class ClientProvider extends ChangeNotifier {
  final ClientDao database;

  ClientProvider(this.database);

  List<Client> _clients = [];
  List<Client> get clients => _clients;

  bool _searchVisible = false;
  bool get searchVisible => _searchVisible;

  void switchSearch(){
    _searchVisible = !_searchVisible;
    notifyListeners();
  }

  Future<void> fetchClients() async {
    try {
      _clients = await database.getClients();
      notifyListeners();
    } catch (e) {
      log('Erro ao carregar horário: ${e.toString()}');
    }
  }

  Future<void> insertClient(Client client) async {
    try {
      await database.insertClient(client);
      _clients = await database.getClients();
      notifyListeners();
    } catch (e) {
      log('Erro cadastrar horário: ${e.toString()}');
    }
  }

  Future<void> updateClient(Client client) async {
    try {
      await database.updateClient(client);
      _clients = await database.getClients();
      notifyListeners();
    } catch (e) {
      log('Erro ao editar horário: ${e.toString()}');
    }
  }

  Future<void> removeClients(int id) async {
    try {
      await database.deleteClient(id);
      _clients = await database.getClients();
      notifyListeners();
    } catch (e) {
      log('Erro ao deletar horário: ${e.toString()}');
    }
  }

  Future<void> searchClients(String query) async {
    try {
      if (query.isEmpty) {
        _clients = await database.getClients();
      } else {
        _clients = await database.searchClients(query);
      }
      notifyListeners();
    } catch (e) {
      log('Erro ao procurar horário: ${e.toString()}');
    }
  }
}
