import 'package:flutter/material.dart';

class RegisterHomeForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(children: [
      TextField(
        decoration: InputDecoration(
          hintText: "Descrição",
        ),
      ),
    ]));
  }
} 
