import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navegação',
    home: Inicio(),
  ));
}

/// Crie um widget Inicio que exibe uma AppBar, com o título "Início",
/// além de dois botões, com os textos Azul e Vermelho.
/// Ao clicar em cada um deles, o app navega para uma tela de detalhe
/// (widget Detalhe) que exibe o nome da cor, além de uma AppBar com
/// o título "Detalhe".
/// 
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Início'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detalhe(cor: 'Azul'),
                  ),
                );
              },
              child: Text('Azul'),
            ),
            const SizedBox(width: 16), // Adicionando espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detalhe(cor: 'Vermelho'),
                  ),
                );
              },
              child: Text('Vermelho'),
            ),
          ],
        ),
      ),
    );
  }
}

class Detalhe extends StatelessWidget {
  final String cor;

  const Detalhe({required this.cor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
        child: Text('$cor'),
      ),
    );
  }
}