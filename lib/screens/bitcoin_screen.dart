// bitcoin_screen.dart
import 'package:flutter/material.dart';
import 'package:hb_brasil_app/widgets/financial_item_widget.dart';

class BitcoinScreen extends StatelessWidget {
  final Map<String, dynamic> bitcoinData;

  const BitcoinScreen({
    Key? key,
    required this.bitcoinData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Finanças de Hoje - Bitcoin'),
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: bitcoinData['blockchain_info']['name'],
                value: bitcoinData['blockchain_info']['last'],
                variation: bitcoinData['blockchain_info']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: bitcoinData['coinbase']['name'],
                value: bitcoinData['coinbase']['last'],
                variation: bitcoinData['coinbase']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: bitcoinData['bitstamp']['name'],
                value: bitcoinData['bitstamp']['last'],
                variation: bitcoinData['bitstamp']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: bitcoinData['foxbit']['name'],
                value: bitcoinData['foxbit']['last'],
                variation: bitcoinData['foxbit']['variation'],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: FinancialItemWidget(
                name: bitcoinData['mercadobitcoin']['name'],
                value: bitcoinData['mercadobitcoin']['last'],
                variation: bitcoinData['mercadobitcoin']['variation'],
              ))
            ],
          )
        ]));
  }
}
