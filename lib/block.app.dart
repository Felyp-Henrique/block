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
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue[900],
        accentColor: Colors.pink[600],
        errorColor: Colors.red[900],
      ),
    );
  }
}
