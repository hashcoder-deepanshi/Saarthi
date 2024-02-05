import 'package:flutter/material.dart';
import 'package:saarthi/pages/featuresPages/documents.dart';
import 'package:saarthi/pages/featuresPages/login.dart';
import 'package:saarthi/pages/featuresPages/register.dart';
import 'package:saarthi/pages/navPages/mainPage.dart';
import 'package:saarthi/pages/navPages/translation.dart';
import 'package:saarthi/pages/welcome.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Saarthi';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.orange,
      ),
      home: MainPage(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'mainPage': (context) => MainPage(),
        'document': (context) => documentPage(),
        'translate' : (context) => Translate(),
      },
    );
  }
}
