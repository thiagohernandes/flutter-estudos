import 'package:flutter/material.dart';

import 'package:navegacao_roteamento/pages/welcome_page.dart';
import 'package:navegacao_roteamento/pages/home_page.dart';
import 'package:navegacao_roteamento/pages/settings_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: WelcomePage(),
      routes: {
        '/': (context) => WelcomePage(),
        '/home': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
