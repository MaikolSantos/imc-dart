import 'dart:convert';
import 'dart:io';

double checkNumber(String text) {
  double number = 0;

  do {
    print(text);

    var line = stdin.readLineSync(encoding: utf8);

    try {
      number = double.parse(line ?? "");
    } catch (e) {
      print("Por favor, insira um número válido.");
      number = double.nan;
    }
  } while (number.isNaN || number <= 0);

  return number;
}
