import 'package:flutter/material.dart';

import 'package:navegacao_roteamento/pages/details_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
            child: RaisedButton(
              child: Text('Ir para DETALHES!'),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsPage(
                        msg: "Esta mensagem veio da página inicial"
                    )
                ));
              },
            )
        ),
      ),
    );
  }
}
