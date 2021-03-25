import 'package:block/components/appbar.component.dart';
import 'package:block/components/bottomsheet.component.dart';
import 'package:block/components/item.component.dart';
import 'package:block/components/scaffold.component.dart';
import 'package:block/forms/register.home.form.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class HomeView extends StatelessWidget {

  static const String ROUTE_PATH = "/";

  List<dynamic> _itens = List.empty();
  final GlobalKey<BlockScaffoldState> _blockScaffold = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlockScaffold(
      key: _blockScaffold,
      appBar: _appbar(),
      body: SafeArea(
        child: _itens.isEmpty
          ? _semItens()
          : _itensLista(),
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

  Widget _semItens() {
    return Builder(builder: (context) => Center(
      child: Text(
        "Nenhum item cadastrado",
        style: Theme.of(context).textTheme.headline6?.copyWith(
          color: Theme.of(context).textTheme.caption?.color,
        ),
      ),
    ));
  }

  Widget _itensLista() {
    return ListView(children: [
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
      BlockItem.application(title: "Hello World", subtitle: "Isto é apenas um teste."),
    ]);
  }

  Widget _adicionarItem() {
    return FloatingActionButton.extended(
        icon: Icon(Icons.add), label: Text("Adicionar"), onPressed: () {
      _blockScaffold.currentState?.showBottomSheet((context) {
        return BlockBottomSheet(
          child: RegisterHomeForm(),
        );
      });
    });
  }
}
