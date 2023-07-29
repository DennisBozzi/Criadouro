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
      body: const Center(
        child: Text('Banana'),
      ),
    );
  }
}
