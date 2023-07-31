import 'addFilhote.dart';

import 'package:flutter/material.dart';

List<String> datas = ['2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023', '2024'];

String? opcaoSelecionada;

List<DropdownMenuItem<String>> anos = datas.map((String value) {
  return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
  );
}).toList();

class filhote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filhotes'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Alguma Coisa', style: TextStyle(fontSize: 28)),
            Container(
              alignment: Alignment.topCenter, // Centraliza o conteúdo do Container
              width: 400,
              child: DropdownButton(
                items: anos,
                onChanged: (String? newValue) {
                  opcaoSelecionada = newValue!;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => filhote(),
                    ),
                  );
                  print(opcaoSelecionada);
                },
                value: opcaoSelecionada,
                isExpanded: true,
                hint: const Text('Escolha uma Data'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => addFilhote(),
            ),
          );
        },
      ),
    );
  }
}

void addNovoFilhote(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => addFilhote(),
    ),
  );
}
