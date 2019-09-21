import 'package:bitcoin_ticker/services/network_helper.dart';
import 'package:flutter/cupertino.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
const api_url = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC";

class CoinData {
  CoinData({@required this.selectedCurrency});
  final String selectedCurrency;

  Future<dynamic> getDataCoin() {
    /////////////////////////////////

    //  return cryptoPrices;
    //////////////////////////////////
    String url = api_url + selectedCurrency;
    print("url" + url);
    NetwrokHelper netwrokHelper = NetwrokHelper(url: url);
    var data = netwrokHelper.getData();
    return data;
    ///////////////////////////
  }

  Future<Map<String, dynamic>>getDataCoin1() async {
    Map<String, dynamic> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String url = api_url + crypto + selectedCurrency;
      print("url->" + url);
      NetwrokHelper netwrokHelper = NetwrokHelper(url: url);
      var data = await netwrokHelper.getData();
      print("***********");
      print(data);
      print("***********");
      cryptoPrices[crypto] = data;
    }
    print(cryptoPrices);
    return cryptoPrices;
  }
}
