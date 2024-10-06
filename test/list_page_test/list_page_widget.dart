import 'package:flutter_test/flutter_test.dart';
import 'package:list_client_flutter/data/model/client.dart';
import 'package:list_client_flutter/logic/client_provider.dart';
import 'package:mockito/mockito.dart';

import '../mocks/client_provider_mock.mocks.dart';

void main() {
  late ClientProvider clientProvider;
  late MockClientDao mockClientDao;

  setUp(() {
    mockClientDao = MockClientDao();
    clientProvider = ClientProvider(mockClientDao);
  });

  test('Deve carregar clientes corretamente', () async {
    when(mockClientDao.getClients()).thenAnswer((_) async => [
          Client(
            id: '1',
            name: 'Primeiro cliente',
            horario: '10:00',
            descricao: 'Corte',
            dateCreate: DateTime.now(),
            dateUpdate: DateTime.now(),
          ),
        ]);

    await clientProvider.fetchClients();

    expect(clientProvider.clients.length, 1);
    expect(clientProvider.clients.first.name, 'Primeiro cliente');
  });

  test('Deve inserir cliente e atualizar lista', () async {
    when(mockClientDao.insertClient(any)).thenAnswer((_) async => 1);
    when(mockClientDao.getClients()).thenAnswer((_) async => [
          Client(
              id: '1',
              name: 'Segundo cliente',
              horario: '10:00',
              descricao: 'Corte',
              dateCreate: DateTime.now(),
              dateUpdate: DateTime.now()),
        ]);

    await clientProvider.insertClient(Client(
      id: '0',
      name: 'Segundo cliente',
      horario: '10:00',
      descricao: 'Corte',
      dateCreate: DateTime.now(),
      dateUpdate: DateTime.now(),
    ));

    expect(clientProvider.clients.length, 1);
    expect(clientProvider.clients.first.name, 'Segundo cliente');
  });
}
