import 'package:flutter/material.dart';

class FinancialItemWidget extends StatelessWidget {
  final String name;
  final double value;
  final double variation;

  const FinancialItemWidget({
    Key? key,
    required this.name,
    required this.value,
    required this.variation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor = variation < 0 ? Colors.red : Colors.blue;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4), // Espaçamento
            Text(
              value.toStringAsFixed(2), // Valor com 2 casas decimais
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 2), // Espaçamento
            Text(
              "${variation.toStringAsFixed(3)}%", // Variação com 3 casas decimais e sinal de porcentagem
              style: TextStyle(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
