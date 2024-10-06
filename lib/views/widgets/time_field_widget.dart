import 'package:flutter/material.dart';

class TimeFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function() onTap;

  const TimeFieldWidget({
    super.key,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: onTap,
      decoration: const InputDecoration(labelText: "Horário"),
      validator: (value) => value == null || value.isEmpty
          ? 'Por favor, insira um horário.'
          : null,
    );
  }
}
