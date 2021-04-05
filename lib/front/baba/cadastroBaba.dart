import 'dart:html';

import 'package:flutter/material.dart';
import 'package:primeiro/front/baba/ListaPedidos.dart';

class CadastroBaba extends StatelessWidget {
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
            Text('Cadastrar sua Conta no Babá Pet como Cuidador',
                style: TextStyle(fontSize: 24)),
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
            Text('Data de Nascimento:',
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
            Text('Contato:',
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
            Text('Tempo Disponível:',
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
            Text('Descreva o local que acolherá os animais:',
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
            Text('Preço:',
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
            Text('Vincule sua conta para terminar o cadastro:',
                style: TextStyle(
                  fontSize: 18,
                )),
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
                    "Facebook",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ), //Text
                  color:Colors.indigo[900],
                ),//RaisedButton
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
                    "Instagram",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ), //Text
                  color:Colors.deepPurple[400],
                ),//RaisedButton
              ),
          ],
        )),
      ),
    );
  }
}
