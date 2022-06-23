import 'package:flutter/material.dart';

export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.book, size: 72, color: Colors.green[900]),
          Text(
            'Biblioteca Municipal',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green[900],
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Usuário')),
          ),
          TextField(
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Senha')),
            obscureText: true,
          ),
          Padding(padding: EdgeInsets.only(top: 24), child: ElevatedButton(child: Text('ENTRAR'), style: ElevatedButton.styleFrom(primary: Colors.green[900]), onPressed: () => Navigator.pushReplacementNamed(context, '/lista'))),
        ],
      ),
    );
  }
}
