import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:todo_list/telas/home_tela.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF03254c),
      ),
      darkTheme: ThemeData.dark().copyWith(),
      home: HomeTela(),
    );
  }
}
