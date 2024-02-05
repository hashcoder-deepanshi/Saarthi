import 'package:flutter/material.dart';
import 'package:saarthi/pages/featuresPages/application_det.dart';
import 'package:saarthi/pages/featuresPages/applications.dart';
import 'package:saarthi/pages/featuresPages/document_details.dart';
import 'package:saarthi/pages/featuresPages/documents.dart';
import 'package:saarthi/pages/Authentication/login.dart';
import 'package:saarthi/pages/Authentication/register.dart';
import 'package:saarthi/pages/featuresPages/pension_status.dart';
import 'package:saarthi/pages/featuresPages/track.dart';
import 'package:saarthi/pages/featuresPages/track_otp.dart';
import 'package:saarthi/pages/navPages/mainPage.dart';
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
        'doc_det': (context) => DocumentDetailsPage(),
        'track': (context) => TrackPage(),
        'track_otp': (context) => TrackOTPPage(),
        'application': (context) => ApplicationPage(),
        'pension_status': (context) => PensionStatus(),
        'application_det': (context) => Application_det(),
      },
    );
  }
}
