import 'package:imc_dart/utils/check_number.dart';
import 'package:imc_dart/utils/imc.dart';
import 'package:imc_dart/utils/imc_classification.dart';

class Person {
  String _nome = "";
  double _height = 0;
  double _weight = 0;
  double _imc = 0;
  String _imcClassification = "";

  Person(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void _setHeight(double height) {
    _height = height;
  }

  double getHeight() {
    return _height;
  }

  void _setWeight(double weight) {
    _weight = weight;
  }

  double getWeight() {
    return _weight;
  }

  void setIMC() {
    double height = checkNumber("Digite sua altura em m (metros): ");
    double weight = checkNumber("Digite seu peso em kg (quilos): ");

    _setHeight(height);
    _setWeight(weight);

    _imc = imc(height, weight);

    setIMCClassification(_imc);
  }

  double getIMC() {
    return _imc;
  }

  void setIMCClassification(double imc) {
    _imcClassification = imcClassification(imc);
  }

  String getIMCClassification() {
    return _imcClassification;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Altura": _height,
      "Peso": _weight,
      "IMC": _imc,
      "Classificação IMC": _imcClassification
    }.toString();
  }
}
