import 'package:flutter/material.dart';
import 'package:hb_brasil_app/screens/bitcoin_screen.dart';
import 'package:hb_brasil_app/screens/currency_screen.dart';
import 'package:hb_brasil_app/screens/stock_screen.dart';
import 'package:hb_brasil_app/services/finance_api_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, dynamic> financialData = {};

  @override
  void initState() {
    super.initState();
    FinanceAPIService().fetchData().then((data) {
      setState(() {
        financialData = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Finance App'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Moedas'),
                Tab(text: 'Ações'),
                Tab(text: 'Bitcoin'),
              ],
            ),
          ),
          body: financialData.isEmpty
              ? const CircularProgressIndicator()
              : TabBarView(
                  children: [
                    CurrencyScreen(
                        currencyData: financialData['results']['currencies']),
                    StockScreen(stockData: financialData['results']['stocks']),
                    BitcoinScreen(
                        bitcoinData: financialData['results']['bitcoin']),
                  ],
                ),
        ));
  }
}
