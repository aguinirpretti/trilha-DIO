import 'pessoa.dart';

double calcularImc(Pessoa p) {
  if (p.altura <= 0) {
    throw ArgumentError('Altura inválida para cálculo de IMC.');
  }
  return p.peso / (p.altura * p.altura);
}

String classificarImc(double imc) {
  if (imc.isNaN || imc.isInfinite) return 'IMC inválido';
  if (imc < 18.5) return 'Abaixo do peso';
  if (imc < 25) return 'Peso normal';
  if (imc < 30) return 'Sobrepeso';
  return 'Obesidade';
}
