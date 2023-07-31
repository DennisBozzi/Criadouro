import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String? sexoEscolhido;

DateTime? data = DateTime(2000);
DateTime? dataSelecionada;

List<String> sexos = ['Macho', 'Fêmea'];

List<DropdownMenuItem<String>> sexoos = sexos.map((String value) {
  return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
  );
}).toList();

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
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800,
            ),
            child: Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text('Nome1'),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth:
                              300, // Defina aqui a largura máxima desejada para o TextField
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Escreva o nome aqui',
                          ),
                        ),
                      ),
                      // Adicione outros campos de entrada abaixo, se necessário.
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text('Nome1'),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth:
                              300, // Defina aqui a largura máxima desejada para o TextField
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Escreva o nome aqui',
                          ),
                        ),
                      ),
                      // Adicione outros campos de entrada abaixo, se necessário.
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text('Nome1'),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth:
                              300, // Defina aqui a largura máxima desejada para o TextField
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Escreva o nome aqui',
                          ),
                        ),
                      ),
                      // Adicione outros campos de entrada abaixo, se necessário.
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text('Nome1'),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth:
                              300, // Defina aqui a largura máxima desejada para o TextField
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Escreva o nome aqui',
                          ),
                        ),
                      ),
                      // Adicione outros campos de entrada abaixo, se necessário.
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text('Nome1'),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth:
                              300, // Defina aqui a largura máxima desejada para o TextField
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Escreva o nome aqui',
                          ),
                        ),
                      ),
                      // Adicione outros campos de entrada abaixo, se necessário.
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text('Nome1'),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth:
                              300, // Defina aqui a largura máxima desejada para o TextField
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Escreva o nome aqui',
                          ),
                        ),
                      ),
                      // Adicione outros campos de entrada abaixo, se necessário.
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text('Nome1'),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth:
                              300, // Defina aqui a largura máxima desejada para o TextField
                        ),
                        child: ListTile(
                          trailing: StatefulBuilder(
                            builder: (context, setState) {
                              return ElevatedButton(
                                child: Text(formatDate(data!)),
                                onPressed: () async {
                                  dataSelecionada = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime(2000, 01, 01),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                  );

                                  setState(() {
                                    data = dataSelecionada;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      // Adicione outros campos de entrada abaixo, se necessário.
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('Sexo'),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth:
                              300, // Defina aqui a largura máxima desejada para o TextField
                        ),
                        child: DropdownButton(
                          items: sexoos,
                          onChanged: (String? newValue) {
                            sexoEscolhido = newValue!;
                          },
                          isExpanded: true,
                          value: sexoEscolhido,
                        ),
                      ),
                      // Adicione outros campos de entrada abaixo, se necessário.
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String formatDate(DateTime date) {
  final formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(date);
}
