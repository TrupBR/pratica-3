import 'package:flutter/material.dart';

export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('Novo Livro'),
          actions: [
            TextButton(child: Text('SALVAR', style: TextStyle(color: Colors.white)), onPressed: () => Navigator.pop(context)),
          ],
        ),
        body: Column(children: [
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Gênero do Livro')),
          ),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Nome do Livro')),
          )
        ]));
  }
}
