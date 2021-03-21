import 'package:flutter/material.dart';
import 'package:block/views/home.view.dart';

class BlockApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Block",
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.ROUTE_PATH,
      routes: {
        HomeView.ROUTE_PATH: (context) => HomeView(),
      },
    );
  }
}
