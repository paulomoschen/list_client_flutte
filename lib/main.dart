import 'package:flutter/material.dart';
import 'package:list_client_flutter/data/database/client_DAO.dart';
import 'package:list_client_flutter/utils/theme.dart';
import 'package:list_client_flutter/data/database/database.dart';
import 'package:list_client_flutter/data/database/database_instance.dart';
import 'package:list_client_flutter/views/screens/list_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:list_client_flutter/logic/client_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<AppDatabase>(
        create: (context) => DatabaseInstance.instance,
        dispose: (context, db) => DatabaseInstance.closeDatabase(),
      ),
      ChangeNotifierProvider(
        create: (context) {
          final db = Provider.of<AppDatabase>(context, listen: false); 
          final clientDao = ClientDao(db);
          return ClientProvider(clientDao);
        },
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ClientTheme.mainTheme,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      locale: const Locale('pt', 'BR'),
      home: const ListPage(),
    );
  }
}
