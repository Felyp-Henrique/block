import 'package:flutter/material.dart';
import 'package:block/views/home.view.dart';

class BlockApp extends StatefulWidget {
  
  @override
  BlockAppState createState() {
    return BlockAppState();
  }
}

class BlockAppState extends State<BlockApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "block",
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.ROUTE_PATH,
      routes: {
        HomeView.ROUTE_PATH: (context) => HomeView(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueGrey[800],
        accentColor: Colors.pink[600],
        errorColor: Colors.red[900],
        cardColor: Colors.white,
      ),
    );
  }
}
