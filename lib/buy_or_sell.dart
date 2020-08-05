import 'package:flutter/material.dart';
import 'package:tradingapp/buying_page.dart';
import 'package:tradingapp/login.dart';
import 'Register.dart';
import 'sell.dart';

void buyorsell() {
  runApp(BuyOrSell());
}

class BuyOrSell extends StatefulWidget {
  @override
  _BuyOrSellState createState() => _BuyOrSellState();
}

class _BuyOrSellState extends State<BuyOrSell> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, *name_of_account_holder*!'),
          //TODO: Insert the name of the account holder in the AppBar
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Are you here to buy or sell?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: MaterialButton(
                      child: Card(
                        color: Colors.blue,
                        child: ListTile(
                          leading: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          title: Text(
                            'BUY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          //direct to buying page
                          buyingpage();
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: MaterialButton(
                        child: Card(
                          color: Colors.blue,
                          child: ListTile(
                            leading: Icon(
                              Icons.local_shipping,
                              color: Colors.white,
                            ),
                            title: Text(
                              'SELL',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          print('sell page called');
                          setState(() {
                            sellpage(); //direct to selling page
                          });
                        }),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: FlatButton(
                      child: Text(
                        'Not your account? Click here to login into a different one.',
                        style: TextStyle(fontSize: 10.0),
                      ),
                      onPressed: () {
                        setState(() {
                          loginpage();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
