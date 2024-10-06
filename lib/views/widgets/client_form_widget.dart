import 'package:flutter/material.dart';
import 'package:list_client_flutter/views/widgets/time_field_widget.dart';

class ClientFormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController horarioController;
  final TextEditingController descricaoController;
  final Function() selectTime;

  const ClientFormWidget({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.horarioController,
    required this.descricaoController,
    required this.selectTime,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Nome"),
                validator: (value) => value == null || value.isEmpty
                    ? 'Por favor, insira o nome.'
                    : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TimeFieldWidget(
                controller: horarioController,
                onTap: selectTime,
              ),
            ),
            TextFormField(
              controller: descricaoController,
              decoration: const InputDecoration(labelText: "Descrição"),
              validator: (value) => value == null || value.isEmpty
                  ? 'Por favor, insira a descrição.'
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
