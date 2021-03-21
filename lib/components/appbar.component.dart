import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
PreferredSizeWidget BlockAppBar({
      Key? key,
      @required Widget? title,
      Widget? leading,
      List<Widget>? actions,
      Brightness? brightness: Brightness.light,
    }) {
  return AppBar(
    title: title,
    centerTitle: true,
    actions: actions,
    brightness: brightness,
    leading: leading,
    shadowColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
