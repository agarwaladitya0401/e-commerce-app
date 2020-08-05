import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buy_or_sell.dart';

void sellpage() {
  runApp(Sellpage());
}

class Sellpage extends StatefulWidget {
  @override
  _SellpageState createState() => _SellpageState();
}

class _SellpageState extends State<Sellpage> {
  String dropdownValue = null;
  String dropdownPrice = null;
  String dropdownAge = null;
  List<String> CategoryList = [
    'Books',
    'Fashion',
    'Stationeries',
    'Fitness',
    'Cycles',
    'Other'
  ];
  List<String> PriceList = [
    'Under 200 RS',
    '200-400 RS',
    '400-600 RS',
    '600-800 RS',
    '800-1000 RS',
    'Above 1000 RS'
  ];
  List<String> AgeList = [
    'Under 2 Months',
    '2-4 Months',
    '4-6 Months',
    '6-8 Months',
    '8-10 Months',
    'Above 10 Months'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '🤑 POST YOUR FREE AD NOW!! 🤑',
            style: TextStyle(
              //color: Colors.white,
              //fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.amber[900],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: Text(
                    'DETAILS FOR YOUR PRODUCT',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: DropdownButton<String>(
                  hint: Text(
                    'Select category',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  iconEnabledColor: Colors.white,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple[300], fontSize: 20),
//                  selectedItemBuilder: (BuildContext context) {
//                    return CategoryList.map((String value) {
//                      return Text(
//                        dropdownValue,
//                        style: TextStyle(color: Colors.white),
//                      );
//                    }).toList();
//                  },
// TODO:this above "selectedItemBuilder" is use to give different colour to text in list after it got selected  but was showing some error.
                  underline: Container(
                    height: 2,
                    color: Colors.deepOrange,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: CategoryList.map<DropdownMenuItem<String>>(
                      (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: DropdownButton<String>(
                  hint: Text(
                    'Select Price Range in INR',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: dropdownPrice,
                  //focusColor: Colors.white,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  iconEnabledColor: Colors.white,
                  elevation: 16,
                  //style: TextStyle(color: Colors.white, fontSize: 20),
                  underline: Container(
                    height: 2,
                    color: Colors.deepOrange,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownPrice = newValue;
                    });
                  },
                  style: TextStyle(color: Colors.deepPurple[300], fontSize: 20),
//                  selectedItemBuilder: (BuildContext context) {
//                    return PriceList.map((String value) {
//                      return Text(
//                        dropdownPrice,
//                        style: TextStyle(color: Colors.white),
//                      );
//                    }).toList();
//                  },
                  items:
                      PriceList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: DropdownButton<String>(
                  hint: Text(
                    'Age of product in months',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: dropdownAge,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  iconEnabledColor: Colors.white,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple[300], fontSize: 20),
                  underline: Container(
                    height: 2,
                    color: Colors.deepOrange,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownAge = newValue;
                    });
                  },
                  items: AgeList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
