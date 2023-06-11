import 'package:bmi_calculator_reactiv/screen/homePage.dart';
import 'package:bmi_calculator_reactiv/screen/resultPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(0, 34, 12, 89),
          ),
          scaffoldBackgroundColor: Colors.pink),
      home: Scaffold(

        body: HomePage(),
      ),
      initialRoute: Routes.homePage,
      routes: {
        Routes.homePage: (context) => HomePage(),
        Routes.resultPage: (context) => const ResultPage(),
      },
    );
  }
}

class Routes {
  static String homePage = 'homePage';
  static String resultPage = 'resultPage';
}
