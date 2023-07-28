// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Contador(),
    ),
  ));
}

/// Crie um StatelessWidget chamado contador, que exibe três botões:
/// +1, +5 e +25. Ao clicar em cada um deles, o contador é incrementado
/// em 1, 5 e 25, respectivamente, e uma snackbar é exibida com o texto
/// "Contador: <N>", onde <N> é o valor atual do contador.
///
/// OBS.: Não é uma boa prática guardar o estado do contador dentro de
/// um StatelessWidget, mas vamos fazer isso por enquanto para aprender
/// como funciona.
class Contador extends StatelessWidget {
  Contador({super.key});
  int valor = 0;

  int contar({required int a}) {
    return valor = valor + a;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text('+1'),
          onPressed: () {
            int total = contar(a: 1);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Contador: $total"),
              duration: const Duration(milliseconds: 500),
            ));
          },
        ),
        ElevatedButton(
          child: const Text('+5'),
          onPressed: () {
            int total = contar(a: 5);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Contador: $total"),
              duration: const Duration(milliseconds: 500),
            ));
          },
        ),
        ElevatedButton(
          child: const Text('+25'),
          onPressed: () {
            int total = contar(a: 25);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Contador: $total"),
              duration: const Duration(milliseconds: 500),
            ));
          },
        ),
      ],
    );
  }
}
