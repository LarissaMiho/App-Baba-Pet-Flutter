import 'dart:js';

import 'package:flutter/material.dart';
import 'package:primeiro/front/procurador/editarProcurador.dart';
import 'package:primeiro/front/procurador/contatoBaba.dart';
import 'package:primeiro/front/procurador/listaBabas.dart';
import 'package:primeiro/front/telaInicial.dart';
import 'package:primeiro/models/item.dart';

class TodosContatoBaba extends StatelessWidget {
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
                  title: Text("Mapa Babá"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => ListaBabas()));
            },
                  
                ),
                ListTile(
                  title: Text("Contato das Babás"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => TodosContatoBaba()));
            },
                ),
                ListTile(
                  title: Text("Editar Perfil"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => EditarProcurador()));
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
    items.add(Item(title: "Gustavo", done: true));
    items.add(Item(title: "Nathalia", done: false));
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index].title} / 00000-0000'),
            onTap: () {
              debugPrint('${items[index]} foi seleconado');
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => ContatoBaba()));
            },
          );
        });
  }
}
