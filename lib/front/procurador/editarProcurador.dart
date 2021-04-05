import 'dart:html';

import 'package:flutter/material.dart';
import 'package:primeiro/front/baba/ListaPedidos.dart';
import 'package:primeiro/front/procurador/listaBabas.dart';
import 'package:primeiro/front/procurador/todosContatoBaba.dart';
import 'package:primeiro/front/telaInicial.dart';

class EditarProcurador extends StatelessWidget {
  var newTaskCtrl = TextEditingController();
  var txtNome = TextEditingController();
  var txtDataNascimento = TextEditingController();
  var txtContato = TextEditingController();
  var txtTempoDisponivel = TextEditingController();

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
            TextFormField(
              controller: txtNome,
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Text('Tipo:',
                style: TextStyle(
                  fontSize: 15,
                )),
            TextFormField(
              controller: txtDataNascimento,
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Text('Raça:',
                style: TextStyle(
                  fontSize: 15,
                )),
            TextFormField(
              controller: txtContato,
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Text('Data de Nascimento:',
                style: TextStyle(
                  fontSize: 15,
                )),
            TextFormField(
              controller: newTaskCtrl,
              keyboardType: TextInputType.text,
              maxLines: 5,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Text('Descrição do Pet',
                style: TextStyle(
                  fontSize: 15,
                )),
            TextFormField(
              controller: newTaskCtrl,
              keyboardType: TextInputType.text,
              maxLines: 5,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Text('Observações:',
                style: TextStyle(
                  fontSize: 15,
                )),
            TextFormField(
              controller: newTaskCtrl,
              keyboardType: TextInputType.text,
              maxLines: 5,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            
              ButtonTheme(
                height: 50.0,        
                child: RaisedButton(
                  onPressed: () => { print("pressionei o botão"),
                  Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => ListaPedidos())) },
                  shape: new RoundedRectangleBorder(borderRadius:
 new BorderRadius.circular(5.0)),
                  child: Text(
                    "Salvar",
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
          ),
    );
  }
}
