import 'package:flutter/material.dart';
import 'package:primeiro/front/baba/cadastroBaba.dart';
import 'package:primeiro/front/procurador/cadastroProcurador.dart';

class EscolhaUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Babá Pet")),

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
                  builder: (BuildContext context) => CadastroBaba()));
            },
            child: Text("Ser babá de pets", style: TextStyle(
              color: Colors.white
            ),),
            color: Colors.brown,
            
            ),

            Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
            RaisedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => CadastroProcurador()));
            },
            child: Text("Procurar por babá pet", style: TextStyle(
              color: Colors.white
            ),),
            color: Colors.brown,
            ),
      
  ],
)
        ),
      ),
        
        
        
    );

  }
}
