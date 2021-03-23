import 'package:block/components/appbar.component.dart';
import 'package:block/components/item.component.dart';
import 'package:block/components/scaffold.component.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  static const String ROUTE_PATH = "/";

  @override
  Widget build(BuildContext context) {
    return BlockScaffold(
      appBar: _appbar(),
      body: SafeArea(
        child: _body(),
      ),
      floatingActionButton: _adicionarItem(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  PreferredSizeWidget _appbar() {
    return BlockAppBar(
      title: Text("block"),
      actions: [
        IconButton(icon: Icon(Icons.settings), onPressed: () {
          print("Heee");
        }),
      ],
    );
  }

  Widget _body() {
    return ListView(children: [
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
    ]);
  }

  FloatingActionButton _adicionarItem() {
    return FloatingActionButton.extended(
        icon: Icon(Icons.add), label: Text("Adicionar"), onPressed: () {
      print("Hello World");
    });
  }
}
