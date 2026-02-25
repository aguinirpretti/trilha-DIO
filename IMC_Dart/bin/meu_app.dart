import 'dart:io';
import 'io_utils.dart';
import 'pessoa.dart';
import 'imc.dart';

void main() {
  print('=== Calculadora de IMC ===');
  try {
    final nome = lerString('Nome: ');
    final peso = lerDouble('Peso (kg): ');
    final alturaInput = lerDouble('Altura (m) (use 1.75 ou 175): ');
    final altura = alturaInput > 10 ? alturaInput / 100 : alturaInput;

    final pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    final valorImc = calcularImc(pessoa);
    final classificacao = classificarImc(valorImc);

    print('\nResultado:');
    print('Nome: ${pessoa.nome}');
    print('Peso: ${pessoa.peso} kg');
    print('Altura: ${pessoa.altura} m');
    print('IMC: ${valorImc.toStringAsFixed(2)}');
    print('Classificação: $classificacao');
  } on FormatException catch (e) {
    stderr.writeln('Erro de formato: ${e.message}');
  } on ArgumentError catch (e) {
    stderr.writeln('Argumento inválido: ${e.message}');
  } catch (e) {
    stderr.writeln('Erro inesperado: $e');
  }
}
