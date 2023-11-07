import 'package:flutter/material.dart';
import 'package:hb_brasil_app/widgets/financial_item_widget.dart';

class CurrencyScreen extends StatelessWidget {
  Map<String, dynamic> currencyData = {};

  CurrencyScreen({
    Key? key,
    required this.currencyData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Principais Moedas'),
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: currencyData['USD']['name'],
                value: currencyData['USD']['buy'],
                variation: currencyData['USD']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: currencyData['EUR']['name'],
                value: currencyData['EUR']['buy'],
                variation: currencyData['EUR']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: currencyData['GBP']['name'],
                value: currencyData['GBP']['buy'],
                variation: currencyData['GBP']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: currencyData['ARS']['name'],
                value: currencyData['ARS']['buy'],
                variation: currencyData['ARS']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: currencyData['CAD']['name'],
                value: currencyData['CAD']['buy'],
                variation: currencyData['CAD']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: currencyData['AUD']['name'],
                value: currencyData['AUD']['buy'],
                variation: currencyData['AUD']['variation'],
              ))
            ],
          )
        ]));
  }
}
