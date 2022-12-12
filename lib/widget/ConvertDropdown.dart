import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConvertDropdown extends StatelessWidget {
  const ConvertDropdown(
      {Key? key,
      required this.dropdownOnChanged,
      required this.changeValue,
      required this.listItem,
      required this.newValue,
      required this.konversiSuhu})
      : super(key: key);
  final Function dropdownOnChanged;
  final changeValue;
  final newValue;
  final List<String> listItem;
  final Function konversiSuhu;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listItem.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: newValue,
      onChanged: (changeValue) {
        dropdownOnChanged(changeValue!);
        konversiSuhu();
      },
    );
  }
}
