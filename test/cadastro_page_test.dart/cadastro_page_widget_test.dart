import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_client_flutter/data/model/client.dart';
import 'package:list_client_flutter/logic/client_provider.dart';
import 'package:list_client_flutter/views/screens/cadastro_page.dart';
import 'package:provider/provider.dart';

import '../mocks/client_provider_mock.dart';



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

  testWidgets('Mostra os campos de cadastro',
      (WidgetTester tester) async {
    await tester.pumpWidget(createCadastroPage());

    expect(find.text('Nome'), findsOneWidget);
    expect(find.text('Horário'), findsOneWidget);
    expect(find.text('Descrição'), findsOneWidget);

    expect(find.text(''), findsNWidgets(3));
  });

  testWidgets('Carrega dados para edição',
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
}
