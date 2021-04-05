import 'dart:html';

import 'package:flutter/material.dart';
import 'package:primeiro/front/procurador/editarProcurador.dart';
import 'package:primeiro/front/procurador/listaBabas.dart';
import 'package:primeiro/front/procurador/todosContatoBaba.dart';
import 'package:primeiro/front/telaInicial.dart';

class ContatoBaba extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Babá Pet"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Nome:',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Gustavo',
                style: TextStyle(
                  fontSize: 15,
                )),

            Text('',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Data de Nascimento:',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('00/00/0000',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Contato:',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('00000-0000',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Tempo Disponível:',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Texto texto texto',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Descrição do local que acolherá os animais:',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Texto Texto texto',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Preço:',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('Texto Texto Texto',
                style: TextStyle(
                  fontSize: 15,
                )),
              ButtonTheme(
                height: 50.0,        
                child: RaisedButton(
                  onPressed: () => { print("pressionei o botão"),
                  Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => TodosContatoBaba())) },
                  shape: new RoundedRectangleBorder(borderRadius:
 new BorderRadius.circular(5.0)),
                  child: Text(
                    "Contatar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ), //Text
                  color:Colors.green,
                ),//RaisedButton
              ),
          ],
        )),
      ),
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
    )
    );
  }
}
