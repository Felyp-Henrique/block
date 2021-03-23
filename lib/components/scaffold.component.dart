import 'package:block/dimensions.app.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlockScaffold extends StatelessWidget {

  Widget? body;
  PreferredSizeWidget? appBar;
  FloatingActionButton? floatingActionButton;
  FloatingActionButtonLocation? floatingActionButtonLocation;

  BlockScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Theme.of(context).primaryColor,
      body: _body(),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }

  Widget _body() {
    return Container(
      child: body,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: BlockDimensions.borderCircular,
          topRight: BlockDimensions.borderCircular,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, -4),
          ),
        ],
      ),
    );
  }
}