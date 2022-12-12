import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konversi_suhu_listmap/widget/ConvertDropdown.dart';
import 'package:konversi_suhu_listmap/widget/Input.dart';
import 'package:konversi_suhu_listmap/widget/Result.dart';
import 'package:konversi_suhu_listmap/widget/Riwayat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// This widget is the root of your application.
  TextEditingController Celcius = new TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double farenheit = 0;
  double reamor = 0;
  String newValue = "Kelvin";
  double result = 0;
  String changeValue = " ";
  var listItem = ["Kelvin", "Farenheit", "Reamur"];
  List<String> listViewItem = <String>[];
  void dropdownOnChanged(String changeValue) {
    setState(() {
      newValue = changeValue;
    });
  }

  void konversiSuhu() {
    setState(() {
      inputUser = double.parse(Celcius.text);
      if (newValue == "Kelvin")
        result = inputUser + 273;
      else if (newValue == "Farenheit")
        result = inputUser * (9 / 5);
      else
        result = inputUser * (4 / 5);
      listViewItem.add(newValue + " : " + result.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu_Achmad Wibawa/2041720174"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(children: [
            Input(Celcius: Celcius),
            ConvertDropdown(
                dropdownOnChanged: dropdownOnChanged,
                changeValue: changeValue,
                listItem: listItem,
                newValue: newValue,
                konversiSuhu: konversiSuhu),
            Result(result: result),
            Container(
              margin: EdgeInsets.all(8),
              child: Text(
                "Riwayat",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Riwayat(listViewItem: listViewItem),
            ),
          ]),
        ),
      ),
    );
  }
}
