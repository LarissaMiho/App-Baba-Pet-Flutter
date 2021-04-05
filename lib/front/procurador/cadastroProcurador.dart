import 'package:flutter/material.dart';
import 'package:primeiro/front/procurador/listaBabas.dart';


class CadastroProcurador extends StatelessWidget {
  var txtNome = TextEditingController();
  var txtTipo = TextEditingController();
  var txtRaca = TextEditingController();
  var txtDataNascimento = TextEditingController();
  var txtDescricaoPet = TextEditingController();
  var txtObservacoes = TextEditingController();
  
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

    Text('Nome:', 
    style: TextStyle(
      fontSize: 15, 
    )),
    TextFormField(controller: txtNome,
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
    TextFormField(controller: txtTipo,
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
    TextFormField(controller: txtRaca,
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
    TextFormField(controller: txtDataNascimento,
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    
    ),

  Text('Descreva o seu pet:', 
    style: TextStyle(
      fontSize: 15,
      
    )),
    TextFormField(controller: txtDescricaoPet,
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
    TextFormField(controller: txtObservacoes,
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
                  builder: (BuildContext context) => ListaBabas()))
                  },
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
                  builder: (BuildContext context) => ListaBabas()))
                   },
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
)
        ),
      ),
    );
  }
}