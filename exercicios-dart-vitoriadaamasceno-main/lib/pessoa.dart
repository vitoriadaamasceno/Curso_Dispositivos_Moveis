/// Crie uma classe Pessoa, com os atributos
///   nome (obrigatório)
///   idade (obrigatório)
///   altura (opcional)
///
/// A classe deve poder ser instanciada assim:
///   Pessoa('Fulano', idade: 18, altura: 1.80)
///   Pessoa('Fulano', idade: 18)
///
/// Além disse, crie um método podeJogarBasquete,
/// que deve retornar true
/// somente se a pessoa tiver ao menos 16 anos
/// e medir ao menos 1,50 m de altura

class Pessoa {
  String nome;
  int idade;
  double? altura;

  Pessoa(this.nome, {required this.idade, this.altura});

  bool podeJogarBasquete() {
    if (idade >= 16 && altura != null && altura! >= 1.50) {
      return true;
    }
    return false;
  }
}
