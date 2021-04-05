import 'package:flutter/material.dart';

class TermosServicos extends StatelessWidget {
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
            Text('Termos de Serviço', 
    style: TextStyle(
      fontSize: 18, 
    )),
    Text('', 
    style: TextStyle(
      fontSize: 15, 
    )),
    Text('Txto texto texto texto texto texto', 
    style: TextStyle(
      fontSize: 15, 
    )),



  ],
)
        ),
      ),
      
    );
  }
}