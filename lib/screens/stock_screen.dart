// stock_screen.dart
import 'package:flutter/material.dart';
import 'package:hb_brasil_app/widgets/financial_item_widget.dart';

class StockScreen extends StatelessWidget {
  Map<String, dynamic> stockData = {};

  StockScreen({
    Key? key,
    required this.stockData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Finanças de Hoje - Ações'),
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: stockData['IBOVESPA']['name'],
                value: stockData['IBOVESPA']['points'],
                variation: stockData['IBOVESPA']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: stockData['IFIX']['name'],
                value: stockData['IFIX']['points'],
                variation: stockData['IFIX']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: stockData['NASDAQ']['name'],
                value: stockData['NASDAQ']['points'],
                variation: stockData['NASDAQ']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: stockData['DOWJONES']['name'],
                value: stockData['DOWJONES']['points'],
                variation: stockData['DOWJONES']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: stockData['CAC']['name'],
                value: stockData['CAC']['points'],
                variation: stockData['CAC']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: stockData['NIKKEI']['name'],
                value: stockData['NIKKEI']['points'],
                variation: stockData['NIKKEI']['variation'],
              ))
            ],
          )
        ]));
  }
}
