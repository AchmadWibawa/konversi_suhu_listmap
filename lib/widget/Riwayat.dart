import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({
    Key? key,
    required this.listViewItem,
  }) : super(key: key);

  final List<String> listViewItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: listViewItem.length,
        itemBuilder: (context, index) {
          return Text(
            listViewItem[index],
            style: const TextStyle(
                fontSize: 17, color: Color.fromARGB(255, 63, 63, 63)),
          );
        },
      ),
    );
  }
}
