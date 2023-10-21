import 'package:imc_dart/utils/imc.dart';
import 'package:imc_dart/utils/imc_classification.dart';
import 'package:test/test.dart';

void main() {
  Map<int, Map<String, double>> mockIMC = {
    1: {"Peso": 70, "Altura": 1.75, "IMC": 22.86},
    2: {"Peso": 90, "Altura": 1.8, "IMC": 27.78},
    3: {"Peso": 60, "Altura": 1.65, "IMC": 22.04},
  };

  Map<String, Map<String, double>> mockException = {
    "Muito Abaixo": {"Peso": 40, "Altura": 1.80, "IMC": 12.35},
    "Muito Acima": {"Peso": 120, "Altura": 1.6, "IMC": 46.88},
  };

  Map<double, String> imcNumbers = {32: "Obesidade (Grau I)", 40: "Obesidade Móbita (Grau III)", 15: "Magreza Grave", 20.2: "Saudável"};

  group("Classificações", () {
    imcNumbers.forEach((key, value) {
      test("Classificação de $key", () {
        expect(imcClassification(key), value);
      });

    });

  });

  group("IMC Válidos", () {
    mockIMC.forEach((key, value) {
      double testFunction = imc(value["Altura"]!, value["Peso"]!);

      test("Teste $key -> Esperado: ${value["IMC"]}, Recebido: $testFunction",
          () {
        expect(testFunction, equals(value["IMC"]));
      });
    });
  });

  group("Erro de IMC", () {
    mockException.forEach((key, value) {
      test("Erro: $key do Peso", () {
        expect(() => imc(value["Altura"]!, value["Peso"]!),
            throwsA(TypeMatcher<Exception>()));
      });
    });
  });
}
