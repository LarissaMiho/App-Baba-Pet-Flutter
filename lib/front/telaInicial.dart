import 'package:flutter/material.dart';
import 'package:primeiro/front/baba/ListaPedidos.dart';
import 'package:primeiro/front/escolhaUsuario.dart';
import 'package:primeiro/front/procurador/listaBabas.dart';
import 'package:primeiro/front/termosServicos.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Babá Pet"),
      ),
      body: Container(
        child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[
           RaisedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => ListaBabas()));
            },
            child: Text("Entrar com Facebook", style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),),
            color: Colors.indigo[900],
            
            ),
            
            
            RaisedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => ListaPedidos()));
            },
            child: Text("Entrar com Instagram", style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),),
            color: Colors.deepPurple[400],
            ),

            Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),//////////////////////////////////////////////////////////////

      
            RaisedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => EscolhaUsuario()));
            },
            child: Text("Cadastrar-se", style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),),
            color: Colors.brown,
            ),
             Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
     Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),

    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),


            RaisedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => TermosServicos()));
            },
            child: Text("Termos de Serviço", style: TextStyle(
              fontSize: 15,
            ),),
            color: Colors.white,
            ),

  ],
)
        ),
      ),
      
    );
  }
}