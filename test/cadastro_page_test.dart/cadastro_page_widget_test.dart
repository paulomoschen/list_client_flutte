import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_client_flutter/data/model/client.dart';
import 'package:list_client_flutter/logic/client_provider.dart';
import 'package:list_client_flutter/views/screens/cadastro_page.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../mocks/client_provider_mock.mocks.dart';

void main() {
  late MockClientDao mockClientDao;
  late ClientProvider clientProvider;

  setUp(() {
    mockClientDao = MockClientDao();
    clientProvider = ClientProvider(mockClientDao);
  });

  Widget createCadastroPage({Client? clientEdit}) {
    return ChangeNotifierProvider<ClientProvider>.value(
      value: clientProvider,
      child: MaterialApp(
        home: CadastroPage(clientEdit: clientEdit),
      ),
    );
  }

  testWidgets('Renderiza corretamente a tela de cadastro sem cliente',
      (WidgetTester tester) async {
    await tester.pumpWidget(createCadastroPage());

    expect(find.text('Nome'), findsOneWidget);
    expect(find.text('Horário'), findsOneWidget);
    expect(find.text('Descrição'), findsOneWidget);

    expect(find.text(''), findsNWidgets(3));
  });

  testWidgets('Preencher os campos e salvar um novo cliente',
      (WidgetTester tester) async {
    when(mockClientDao.insertClient(any)).thenAnswer((_) async => 1);
    when(mockClientDao.getClients()).thenAnswer((_) async => [
          Client(
            id: '1',
            name: 'Marco',
            horario: '13:00',
            descricao: 'Corte',
            dateCreate: DateTime.now(),
            dateUpdate: DateTime.now(),
          )
        ]);

    await tester.pumpWidget(createCadastroPage());

    await tester.enterText(find.bySemanticsLabel('Nome'), 'Marco');
    await tester.enterText(find.bySemanticsLabel('Horário'), '13:00');
    await tester.enterText(
        find.bySemanticsLabel('Descrição'), 'Corte');

    await tester.tap(find.text('Salvar'));
    await tester.pumpAndSettle();

    verify(mockClientDao.insertClient(any)).called(1);
  });

  testWidgets('Carregar dados de um cliente para edição',
      (WidgetTester tester) async {
    Client clientEdit = Client(
      id: '1',
      name: 'André',
      horario: '14:00',
      descricao: 'descrição',
      dateCreate: DateTime.now(),
      dateUpdate: DateTime.now(),
    );

    await tester.pumpWidget(createCadastroPage(clientEdit: clientEdit));

    expect(find.text('André'), findsOneWidget);
    expect(find.text('14:00'), findsOneWidget);
    expect(find.text('descrição'), findsOneWidget);
  });

  testWidgets('Salvar cliente editado', (WidgetTester tester) async {
    when(mockClientDao.updateClient(any)).thenAnswer((_) async => true);

    Client clientEdit = Client(
      id: '1',
      name: 'Cliente Editado',
      horario: '14:00',
      descricao: 'Cliente descrição',
      dateCreate: DateTime.now(),
      dateUpdate: DateTime.now(),
    );

    await tester.pumpWidget(createCadastroPage(clientEdit: clientEdit));

    await tester.enterText(find.bySemanticsLabel('Nome'), 'Cliente Atualizado');
    await tester.enterText(find.bySemanticsLabel('Horário'), '15:00');

    await tester.tap(find.text('Salvar'));
    await tester.pumpAndSettle();

    verify(mockClientDao.updateClient(any)).called(1);
  });

  testWidgets('Validação de campos obrigatórios vazios',
      (WidgetTester tester) async {
    await tester.pumpWidget(createCadastroPage());

    await tester.tap(find.text('Salvar'));
    await tester.pump();

    expect(find.text('Por favor, insira o nome'), findsNWidgets(3));
  });
}
