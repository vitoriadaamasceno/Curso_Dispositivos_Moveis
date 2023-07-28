import 'package:flutter/material.dart';

void main() {
  runApp(const Cumprimento(nome: 'Mundo'));
}

/// Crie um widget Cumprimento que recebe um nome e exibe um texto
/// no formato "Olá, <nome>!".
/// Fique à vontade para alterar o construtor ou o método build.
class Cumprimento extends StatelessWidget {
  final String nome;

  const Cumprimento({required this.nome, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cumprimento'),
        ),
        body: Center(
          child: Text('Olá, $nome!'),
        ),
      ),
    );
  }
}
