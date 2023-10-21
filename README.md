# Calculadora de IMC (Índice de Massa Corporal)

Esta é uma calculadora de IMC (Índice de Massa Corporal) simples em Dart. Ela permite calcular o IMC com base na altura e no peso fornecidos.

## Configuração

Certifique-se de ter o ambiente Dart instalado na sua máquina. Se você não tiver o Dart instalado, você pode fazer o download em [Dart](https://dart.dev/get-dart).

## Executando a Aplicação

1. Clone ou baixe o repositório da aplicação.
2. Navegue até o diretório raiz da aplicação.
3. Execute o arquivo `bin/imc_dart.dart` usando o comando Dart. Isso pode ser feito com o seguinte comando:
    ```dart
    dart run
    ```
4. A aplicação solicitará que você insira sua altura em metros e seu peso em quilos. Após fornecer os valores, o IMC será calculado e a classificação do IMC será exibida.

## Gerando um Novo IMC

A aplicação permite que você gere um novo IMC com base na sua altura e peso. Siga as instruções durante a execução da aplicação para inserir esses valores:

1. Vá até o arquivo `bin/imc_dart.dart`;
2. Instancie uma pessoa com a classe Person();
3. Execute o método .setIMC() da instancia criada.

Exemplo: 

```dart
  var person1 = Person("Maikol");

  person1.setIMC();
```

## Executando Testes

A aplicação inclui testes automatizados para verificar a precisão dos cálculos de IMC e das classificações. Para rodar os testes, siga os passos abaixo:

1. Execute o seguinte comando:
    ```dart
    dart test
    ```
2. Os testes serão executados, e você verá os resultados no terminal.

Lembre-se de que esta é uma aplicação de exemplo simples e os valores de IMC fornecidos são fictícios. O IMC real deve ser calculado com valores reais e é uma medida importante de saúde.

---

Espero que este README seja útil para você na configuração e execução da sua aplicação de calculadora de IMC em Dart. Se você tiver alguma dúvida ou precisar de mais informações, não hesite em criar uma [issue](https://github.com/MaikolSantos/imc-dart/issues).