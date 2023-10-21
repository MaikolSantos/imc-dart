import 'package:imc_dart/models/person.dart';

void main(List<String> arguments) {
  var person1 = Person("Fulano");

  person1.setIMC();

  print(person1.toString());
}
