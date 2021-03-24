import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlockBottomSheet extends StatelessWidget {
  
  VoidCallback onClosing;
  Widget child;

  BlockBottomSheet({
    Key? key,
    required this.child,
    required this.onClosing,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(onClosing: onClosing, builder: (ctx) {
      return Container(
        child: child,
        height: 200,
        color: Colors.red,
      );
    });
  }
}
