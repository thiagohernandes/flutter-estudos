import 'package:flutter/material.dart';

import 'package:widgets_essenciais/lista_produtos.dart';
import 'package:widgets_essenciais/model/produto.dart';

class HomePage extends StatelessWidget {
  final List<Produto> _produtosList = produtosList.cast<Produto>();
  HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja de veículos'),
      ),
      body: ListView(
          children: produtosList.map((produto) {
            return Card(
              child: ListTile(
                title: Text(produto.name),
                subtitle: Text(produto.manufacturer),
                trailing: Text(produto.formattedPrice),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(produto.imageUrl),
                ),
              ),
            );
          }).toList()),
    );
  }
}
