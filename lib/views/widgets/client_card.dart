import 'package:flutter/material.dart';
import 'package:list_client_flutter/data/model/client.dart';

class ClientCard extends StatelessWidget {
  final Client client;
  final Function() onDelete;
  final Function() onTap;

  const ClientCard({
    super.key,
    required this.client,
    required this.onDelete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.content_cut_outlined,
          size: 35,
        ),
        title: Text(
          "${client.name} - ${client.horario}hs",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(client.descricao),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: onDelete,
        ),
        onTap: onTap,
      ),
    );
  }
}
