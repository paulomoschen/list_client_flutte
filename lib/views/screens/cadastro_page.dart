import 'package:flutter/material.dart';
import 'package:list_client_flutter/data/model/client.dart';
import 'package:list_client_flutter/logic/client_provider.dart';
import 'package:list_client_flutter/views/widgets/client_form_widget.dart';
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
  final _formKey = GlobalKey<FormState>();

  TimeOfDay? _selectedTime;

  @override
  void initState() {
    if (widget.clientEdit != null) {
      _setDataUpdate();
    }
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
            child: ClientFormWidget(
              formKey: _formKey,
              nameController: _nameController,
              horarioController: _horarioController,
              descricaoController: _descricaoController,
              selectTime: () => _selectTime(context),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: TextButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
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
                  }
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
          )
        ],
      ),
    );
  }

  _setDataUpdate() {
    _nameController.text = widget.clientEdit!.name;
    _horarioController.text = widget.clientEdit!.horario;
    _descricaoController.text = widget.clientEdit!.descricao;

    List<String> timeParts = widget.clientEdit!.horario.split(':');
    int hour = int.parse(timeParts[0]);
    int minute = int.parse(timeParts[1]);
    _selectedTime = TimeOfDay(hour: hour, minute: minute);
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
