import 'package:flutter/material.dart';

class novoFilhote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Tela'),
      ),
      body: Center(
        child: Text('Conteúdo da Nova Tela'),
      ),
    );
  }
}