import 'dart:io';

String lerString(String prompt) {
  stdout.write(prompt);
  final line = stdin.readLineSync();
  if (line == null) throw FormatException('Entrada nula.');
  return line.trim();
}

double lerDouble(String prompt) {
  final s = lerString(prompt);
  final value = double.tryParse(s.replaceAll(',', '.'));
  if (value == null) throw FormatException('Número inválido: "$s"');
  return value;
}
