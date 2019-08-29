import 'package:flutter/material.dart';

import 'package:app_planetas/pages/home_page.dart';

class App extends StatelessWidget {
  final String _appName = 'PlanetMedia';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      theme: ThemeData(
          brightness: Brightness.dark,
          cardColor: Colors.black26,
          accentColor: Colors.black87
      ),
      home: HomePage(
        title: _appName,
      ),
    );
  }
}
