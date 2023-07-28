import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      home: Scaffold(body: Inicio()),
    ),
  ));
}

///
/// Determina se a interface está em modo escuro (true) ou claro (false).
/// No modo escuro, a cor de fundo é preta e o texto é branco.
/// No modo claro, a cor de fundo é branca e o texto é preto.
/// O valor inicial é false, ou seja, modo claro.
///
final modoEscuroProvider = StateProvider((ref) => false);

///
/// Converta a clase para um ConsumerWidget, de forma que a cor de fundo
/// e o texto ("Modo Claro" / "Modo Escuro") variam de acordo com o valor
/// do modoEscuroProvider.
///
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MeuTexto('Modo Claro'),
            BotaoTrocarModo(),
          ],
        ),
      ),
    );
  }
}

///
/// Mude as cores de acordo com o modo atual (claro ou escuro)
/// Ao clicar no botão, alterne entre modo claro e escuro
///
class BotaoTrocarModo extends ConsumerWidget {
  const BotaoTrocarModo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
        onPressed: () {}, // Alterne entre modo claro e escuro
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Colors.black,
          ),
        ),
        child: Text(
          'Trocar',
          style: TextStyle(
            color: Colors.black,
          ),
        ));
  }
}

///
/// Mude as cores de acordo com o modo atual (claro ou escuro)
///
class MeuTexto extends ConsumerWidget {
  final String texto;
  const MeuTexto(this.texto, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      texto,
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }
}
