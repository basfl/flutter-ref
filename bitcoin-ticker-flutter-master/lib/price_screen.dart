import 'package:bitcoin_ticker/services/network_helper.dart';
import 'package:flutter/material.dart';
import "coin_data.dart";
import 'package:flutter/cupertino.dart';
import "dart:io" show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = "USD";
  String currectExchange;
  Map<String, dynamic> cryptoPrices;
  //NetwrokHelper networkHelper = NetwrokHelper();


void getData()async{
  CoinData coinData=CoinData(selectedCurrency: selectedCurrency);
  var data=await coinData.getDataCoin();
  setState(() {
    currectExchange=data['last'].toString();
    print("**************"+currectExchange);
  });
}

//void getData1(){
//  CoinData coinData=CoinData(selectedCurrency: selectedCurrency);
//  cryptoPrices=coinData.getDataCoin();
//  print(cryptoPrices["BTC"]);
//}
  void initState() {
    super.initState();
    getData();


  }

  DropdownButton<String> androidDropDown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        print(value);
        setState(
          () {
            selectedCurrency = value;
            getData();
          },
        );
      },
    );
  }

  CupertinoPicker iosDropDown() {
    List<Text> texts = [];
    for (String currency in currenciesList) {
      var newItem = Text(currency);
      texts.add(newItem);
    }
    return CupertinoPicker(
      itemExtent: 32,
      backgroundColor: Colors.lightBlue,
      onSelectedItemChanged: (index) {
     //   print("Index");
        setState(() {
          selectedCurrency = currenciesList[index];
          getData();
        });
      },
      children: texts,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ///////////////////
          Column(
            children: <Widget>[
              //////////////////
              Padding(
                padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
                child: CryptoCard(currectExchange: currectExchange, selectedCurrency: selectedCurrency,selectedCryptoCoin: cryptoList[0]),
              ),
              //////////////////
              Padding(
                padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
                child: CryptoCard(currectExchange: currectExchange, selectedCurrency: selectedCurrency,selectedCryptoCoin: cryptoList[1]),
              ),
              /////////////////
              Padding(
                padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
                child: CryptoCard(currectExchange: currectExchange, selectedCurrency: selectedCurrency,selectedCryptoCoin: cryptoList[2]),
              ),
            ],
          ),

          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isAndroid ? androidDropDown() : iosDropDown(),
          )
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {

  CryptoCard({@required this.currectExchange,@required this.selectedCurrency,@required this.selectedCryptoCoin});
   String currectExchange;
   String selectedCurrency;
   String selectedCryptoCoin;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlueAccent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
        child: Text(
          '1 $selectedCryptoCoin = $currectExchange $selectedCurrency',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

///////////////////////

////////////////
