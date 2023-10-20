String imcClassification(double imc) {
  if (imc >= 40) return "Obesidade Móbita (Grau III)";

  if (imc >= 35) return "Obesidade Severa (Grau II)";

  if (imc >= 30) return "Obesidade (Grau I)";

  if (imc >= 25) return "Sobrepeso";

  if (imc >= 18.5) return "Saudável";

  if (imc >= 17) return "Magreza Leve";

  if (imc >= 16) return "Magreza Moderada";

  if (imc < 16) return "Magreza Grave";

  return "IMC Inválido!";
}
