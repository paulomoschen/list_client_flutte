import 'dart:async';

import 'package:flutter/material.dart';
import 'package:list_client_flutter/data/model/client.dart';
import 'package:list_client_flutter/views/screens/cadastro_page.dart';
import 'package:list_client_flutter/logic/client_provider.dart';
import 'package:list_client_flutter/views/widgets/client_card.dart';
import 'package:provider/provider.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    final clientProvider = Provider.of<ClientProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Horário"),
        actions: [
          Container(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {
                if (clientProvider.searchVisible) {
                  _searchController.clear();
                  clientProvider.fetchClients();
                }
                clientProvider.switchSearch();
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Consumer<ClientProvider>(builder: (context, provider, child) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Visibility(
                visible: clientProvider.searchVisible,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: _buildSearchField(clientProvider),
                ),
              ),
            );
          }),
          Expanded(
            child: FutureBuilder(
                future: clientProvider.fetchClients(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Center(
                        child: Text('Erro ao carregar horários.'));
                  }
                  return Consumer<ClientProvider>(
                      builder: (context, provider, child) {
                    List<Client> listClient = provider.clients;
                    if (listClient.isEmpty) {
                      return _buildEmptyState();
                    }

                    return Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ListView.builder(
                        itemCount: listClient.length,
                        itemBuilder: (context, index) {
                          Client client = listClient[index];
                          return ClientCard(
                            client: listClient[index],
                            onDelete: () async {
                              provider.removeClients(int.parse(client.id));
                            },
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CadastroPage(
                                    clientEdit: client,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  });
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CadastroPage(),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSearchField(ClientProvider provider) {
    return TextField(
      controller: _searchController,
      decoration: const InputDecoration(
        fillColor: Colors.white70,
        filled: true,
        hintText: 'Pesquisar',
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
      onChanged: (value) {
        if (_debounce?.isActive ?? false) _debounce!.cancel();
        _debounce = Timer(const Duration(milliseconds: 300), () {
          provider.searchClients(value);
        });
      },
    );
  }

  Widget _buildEmptyState() {
    return const Center(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Text('Nenhum horário encontrado.'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }
}
