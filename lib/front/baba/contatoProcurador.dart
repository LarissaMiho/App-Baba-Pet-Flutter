import 'package:flutter/material.dart';
import 'package:primeiro/front/baba/ListaPedidos.dart';
import 'package:primeiro/front/baba/editarBaba.dart';
import 'package:primeiro/front/telaInicial.dart';

class ContatoProcurador extends StatelessWidget {
  
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
    Text('Cadastrar sua Conta no Babá Pet para encontrar uma Babá', 
    style: TextStyle(
      fontSize: 24
    )),

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////

    Text('Nome:', 
    style: TextStyle(
      fontSize: 18, 
    )),
    Text('Marta', 
    style: TextStyle(
      fontSize: 15, 
    )),

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////

    Text('Tipo:', 
    style: TextStyle(
      fontSize: 18, 
    )),
    Text('Cachorro:', 
    style: TextStyle(
      fontSize: 15, 
    )),

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////

  Text('Raça:', 
    style: TextStyle(
      fontSize: 18,
      
    )),
    Text('Poodle', 
    style: TextStyle(
      fontSize: 15, 
    )),

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////

  Text('Data de Nascimento:', 
    style: TextStyle(
      fontSize: 18,
      
    )),
    Text('00/00/0000', 
    style: TextStyle(
      fontSize: 15, 
    )),

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////

  Text('Descreva o seu pet:', 
    style: TextStyle(
      fontSize: 18,
      
    )),
    Text('Texto texto texto', 
    style: TextStyle(
      fontSize: 15, 
    )),

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////

  Text('Observações:', 
    style: TextStyle(
      fontSize: 18,
      
    )),
    Text('Texto Texto texto', 
    style: TextStyle(
      fontSize: 15, 
    )),

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////
    ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () => { print("pressionei o botão"), 
                  Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => ListaPedidos()))},
                  shape: new RoundedRectangleBorder(borderRadius:
                    new BorderRadius.circular(5.0)),
                  child: Text(
                    "Aceitar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ), //Text
                  color:Colors.green,
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
                    "Recusar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ), //Text
                  color:Colors.red,
                ),//RaisedButton
              ),



  ],
)
        ),
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
}