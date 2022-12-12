import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.Celcius,
  }) : super(key: key);

  final TextEditingController Celcius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Celcius,
      decoration: const InputDecoration(
        hintText: "Masukkan Suhu Dalam Celcius",
        labelText: 'Suhu',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
