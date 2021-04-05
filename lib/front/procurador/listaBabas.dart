import 'dart:js';

import 'package:flutter/material.dart';
import 'package:primeiro/front/procurador/contatoBaba.dart';
import 'package:primeiro/front/procurador/editarProcurador.dart';
import 'package:primeiro/front/procurador/todosContatoBaba.dart';
import 'package:primeiro/front/telaInicial.dart';
import 'package:primeiro/models/item.dart';

class ListaBabas extends StatelessWidget {
  /*GoogleMapController mapController;
  double lat = -23.1053927;
  double long = -45.7102558;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

   GoogleMap(
          initialCameraPosition:
              CameraPosition(target: LatLng(lat, long), zoom: 16.0)) 
              -- isso tava no lugar do "buildListView()" no body
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Babá Pet"),
      ),
      body:buildListView(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                "Babá Pet",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  backgroundColor: Colors.brown,
                ),
              ),
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
    items.add(Item(title: "Fábio", done: false));
    items.add(Item(title: "Gustavo", done: true));
    items.add(Item(title: "Nathalia", done: false));
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
                      builder: (BuildContext context) => ContatoBaba()));
            },
          );
        });
  }
}

/*class ListaBaba extends StatefulWidget {
  @override
  _ListaBabaState createState() => _ListaBabaState();
}*/

/*class _ListaBabaState extends State<ListaBaba> {
  GoogleMapController mapController;
  double lat = 45.521563;
  double long = -122.677433;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: LatLng(lat, long), zoom: 11.0)));
  }
}*/
