import 'package:imc_dart/exceptions/imc_invalid_exception.dart';

double imc(double height, double weight) {
  double imc = weight / (height * height);

  if (imc < 15 || imc > 40) throw IMCError();

  return double.parse(imc.toStringAsFixed(2));
}
