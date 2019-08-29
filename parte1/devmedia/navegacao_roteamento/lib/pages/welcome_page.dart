import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MaterialButton(
              child: Text('Ir para página inicial.'),
              onPressed: (){
                Navigator.of(context).pushNamed('/home');
              },
            ),
            MaterialButton(
              child: Text('Ir para página de configurações.'),
              onPressed: (){
                Navigator.of(context).pushNamed('/settings');
              },
            )
          ],
        ),
      ),
    );
  }
}
