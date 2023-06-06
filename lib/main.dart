import 'package:bmi_calculator_reactiv/screen/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(0, 34, 12, 89),
          ),
          scaffoldBackgroundColor: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bmi CalCulator'),
          centerTitle: true,
          leading: const Icon(
            Icons.filter_list,
            size: 30,
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}
