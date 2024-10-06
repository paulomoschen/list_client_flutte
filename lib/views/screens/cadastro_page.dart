import 'package:flutter/material.dart';
import 'package:list_client_flutter/utils/text_field_style.dart';
import 'package:list_client_flutter/data/model/client.dart';
import 'package:list_client_flutter/logic/client_provider.dart';
import 'package:provider/provider.dart';

class CadastroPage extends StatefulWidget {
  final Client? clientEdit;
  const CadastroPage({super.key, this.clientEdit});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _nameController = TextEditingController();
  final _horarioController = TextEditingController();
  final _descricaoController = TextEditingController();

  TimeOfDay? _selectedTime;

  @override
  void initState() {
    _setAtributosUpdate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final clientProvider = Provider.of<ClientProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Horário"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        controller: _nameController,
                        decoration: textFieldStyle(label: "Nome"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        controller: _horarioController,
                        readOnly: true,
                        onTap: () => _selectTime(context),
                        decoration: textFieldStyle(label: "Horário"),
                      ),
                    ),
                    TextFormField(
                      controller: _descricaoController,
                      decoration: textFieldStyle(label: "Descrição"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextButton(
                      onPressed: () {
                        Client client = Client(
                          id: "0",
                          name: _nameController.text,
                          horario: _horarioController.text,
                          descricao: _descricaoController.text,
                          dateCreate: DateTime.now(),
                          dateUpdate: DateTime.now(),
                        );

                        if (widget.clientEdit == null) {
                          clientProvider.insertClient(client);
                        } else {
                          client.id = widget.clientEdit!.id;
                          client.dateCreate = widget.clientEdit!.dateCreate;
                          clientProvider.updateClient(client);
                        }

                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFF64B5F6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Salvar",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _setAtributosUpdate(){
    if(widget.clientEdit != null){
      _nameController.text = widget.clientEdit!.name;
      _horarioController.text = widget.clientEdit!.horario;
      _descricaoController.text = widget.clientEdit!.descricao;
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.inputOnly,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        _horarioController.text = _selectedTime!.format(context);
      });
    }
  }
}
