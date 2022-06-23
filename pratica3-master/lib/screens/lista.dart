import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('Livros Disponíveis'),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green[900],
          onPressed: () => Navigator.pushNamed(context, '/cadastro'),
        ),
        body: ListView.builder(
            itemCount: 7,
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: Icon(Icons.book, color: Colors.green[900]),
                title: Text("Gênero"),
                subtitle: Text("Nome do Livro"),
              );
            }));
  }
}
