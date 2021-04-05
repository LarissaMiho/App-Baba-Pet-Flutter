import 'dart:js';

import 'package:flutter/material.dart';
import 'package:primeiro/front/baba/contatoProcurador.dart';
import 'package:primeiro/front/baba/editarBaba.dart';
import 'package:primeiro/front/telaInicial.dart';
import 'package:primeiro/models/item.dart';

class ListaPedidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Babá Pet"),
      ),
      body: buildListView(),

      drawer: Drawer(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Babá Pet", style: TextStyle(
                    fontSize: 30,
                    color: Colors.brown,
                    backgroundColor: Colors.brown,
                    ),),
                ),
                ListTile(
                  title: Text("Lista de Pedidos"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => ListaPedidos()));
            },
                  
                ),
                ListTile(
                  title: Text("Editar Perfil"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => EditarBaba()));
            },
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_back_ios_rounded),
                  title: Text("Sair"),
                  onTap: () {
                    Navigator.push(
                      context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => TelaInicial()));
            },
                ),
              ],
            ),
          ),
    );
  }

  buildListView() {
    final itens = List<String>.generate(10, (i) => "Item $i");
    final items = [];
    items.add(Item(title: "Marta", done: false));
    items.add(Item(title: "Silvia", done: true));
    items.add(Item(title: "Tadeu", done: false));
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index].title}'),
            onTap: () {
              debugPrint('${items[index]} foi seleconado');
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => ContatoProcurador()));
            },
          );
        });
  }
}
