class Pessoa {
  final String nome;
  final double peso;
  final double altura;

  Pessoa({required this.nome, required this.peso, required this.altura}) {
    if (nome.trim().isEmpty) {
      throw ArgumentError('Nome não pode ser vazio.');
    }
    if (peso <= 0) {
      throw ArgumentError('Peso deve ser maior que zero.');
    }
    if (altura <= 0) {
      throw ArgumentError('Altura deve ser maior que zero.');
    }
  }

  @override
  String toString() => 'Pessoa(nome: $nome, peso: $peso, altura: $altura)';
}
