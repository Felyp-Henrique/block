import 'package:block/components/appbar.component.dart';
import 'package:block/components/scaffold.component.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  static const String ROUTE_PATH = "/";

  @override
  Widget build(BuildContext context) {
    return BlockScaffold(
      appBar: _appbar(),
      body: Center(
        child: Text("Block"),
      ),
    );
  }

  PreferredSizeWidget _appbar() {
    return BlockAppBar(
      title: Text("Block"),
      actions: [
        IconButton(icon: Icon(Icons.people), onPressed: () {
          // ...
        }),
      ],
    );
  }
}
