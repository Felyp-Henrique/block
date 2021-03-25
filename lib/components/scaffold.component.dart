import 'package:block/dimensions.app.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlockScaffold extends StatefulWidget {

  Widget? body;
  PreferredSizeWidget? appBar;
  Widget? floatingActionButton;
  FloatingActionButtonLocation? floatingActionButtonLocation;

  BlockScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  }): super(key: key);

  @override
  BlockScaffoldState createState() {
    return BlockScaffoldState();
  }
}

class BlockScaffoldState extends State<BlockScaffold> {

  final GlobalKey<ScaffoldState> _scaffold = GlobalKey();

  void showBottomSheet(WidgetBuilder builder) {
    showModalBottomSheet(
      context: _scaffold.currentContext!,
      builder: builder,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      appBar: widget.appBar,
      backgroundColor: Theme.of(context).primaryColor,
      body: _body(),
      floatingActionButton: widget.floatingActionButton,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
    );
  }

  Widget _body() {
    return Container(
      child: widget.body,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(BlockDimensions.borderGeneral),
          topRight: Radius.circular(BlockDimensions.borderGeneral),
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