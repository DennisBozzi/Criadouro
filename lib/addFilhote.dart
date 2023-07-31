import 'package:flutter/material.dart';

class addFilhote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Novo Filhote',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Nome'),
            Container(
              constraints: BoxConstraints(
                maxWidth: 300, // Defina aqui a largura máxima desejada para o TextField
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Escreva o nome aqui',
                ),
              ),
            ),
            // Adicione outros campos de entrada abaixo, se necessário.
          ],
        ),
      ),
    );
  }
}
