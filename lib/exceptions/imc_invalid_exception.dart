class IMCError implements Exception {
  String error() =>
      "IMC fora da faixa típica. Tente novamente com outros valores ou procure um médico.";

  @override
  String toString() {
    return "IMCError: ${error()}";
  }
}
