import 'package:flutter/material.dart';

import '../../utils/custom_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.greyColor,
      appBar: AppBar(
        title: const Text("Usuario "),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Cerrar sesión',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: CustomColors.dartColorCustom,
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
      ),
      body: (_listItems()),
      bottomNavigationBar: Stack(
        children: [
          new Container(
            height: 60.0,
            color: Colors.black,
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: _Footer(),
          ),
        ],
      ),
    );
  }
}

Widget _Header() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    color: Colors.blue,
    alignment: Alignment.center,
    child: Row(children: [Text("Header"), _createSearchView()]),
  );
}

Widget _Body() {
  return Expanded(
    child: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
          Container(
            // alignment: Alignment.center,
            child: _listItems(),
          ),
        ],
      ),
    ),
  );
}

Widget _Footer() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Flexible(
      child: new Text(
        "Prolongación paseo de la reforma 880, Lomas Santa Fe, México CP.01219, Ciudad de México, Tel.+52(55)5950-4000 y 7177-4400 ext- 4547 / Lada nacional sin costo:01 800 627-7615",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
    ),
  );
}

Widget _createSearchView() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: CustomColors.greyColor,
          child: _TextField(
              "Buscar", "Busqueda de tareas a realizar", Icons.search),
        ),
      ),
    ],
  );
}

Widget _TextField(labelText, hintText, IconData icon) {
  return TextField(
      decoration: InputDecoration(
    labelText: labelText,
    hintText: hintText,
    prefixIcon: Icon(
      icon,
      color: CustomColors.dartMainColor,
    ),
    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    labelStyle: TextStyle(fontSize: 13, color: CustomColors.dartMainColor),
  ));
}

var _container = Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
    // color: CustomColors.redlightColor,
  ),
  // height: 200,
  padding: const EdgeInsets.symmetric(horizontal: 0),
  // margin: EdgeInsets.symmetric(vertical: 10),
  child: Column(children: [
    Padding(
      padding: EdgeInsets.all(5.0),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: _TextField(
              "Buscar", "Busqueda de tareas a realizar", Icons.search),
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: CustomColors.redlightColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _textHeader("Lista de tareas a realizar"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _textHeader("12/12/1200"),
              ),
            )
          ],
        ),
      ),
    ),
  ]),
);

Widget _listItems() {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: ListView(
      //  ListView
      children: <Widget>[
        _container,
        Container(
          height: 570,
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: ListView(children: [_card(), _card(), _card(), _card()]),
            // child: ListView(children: []),
          ),
        ),
      ],
    ),
  );
}

Widget _card() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    color: CustomColors.redlightColor,
    child: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(10),
          child: _invoiceCard("Folio:123456"),
        ),
        _titleCard("Mantenimiento abierto"),
        Container(
          padding: const EdgeInsets.all(10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 80.0,
                        child: _title('Solicitante', 'Luis Pérez López',
                            Icons.numbers_outlined),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 80.0,
                        child: _title('Fecha de reporte ', '08/30/2022',
                            Icons.bar_chart_outlined),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 80.0,
                        child: _title('Tipo de mantenimiento', 'Fuga de agua',
                            Icons.numbers_outlined),
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton(
                        onPressed: () => {},
                        tooltip: 'Increment',
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

_titleCard(title) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white),
  );
}

_invoiceCard(invoice) {
  return Text(
    invoice,
    textAlign: TextAlign.left,
    style: TextStyle(color: Colors.white),
  );
}

_textHeader(text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 15,
    ),
  );
}

ListTile _title(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
    subtitle: Text(subtitle),
  );
}
