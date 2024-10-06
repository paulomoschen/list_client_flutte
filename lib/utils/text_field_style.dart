import 'package:flutter/material.dart';

InputDecoration textFieldStyle({required String label}) {
  return InputDecoration(
    labelText: label,
    labelStyle: const TextStyle(fontSize: 18),
    alignLabelWithHint: true,
    hintText: label,
    hintStyle: const TextStyle(
      fontSize: 18.0,
    ),
  );
}
