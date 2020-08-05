import 'package:flutter/material.dart';
import 'package:tradingapp/buy_or_sell.dart';

void buyingpage() {
  runApp(BuyingPage());
}

class BuyingPage extends StatefulWidget {
  @override
  _BuyingPageState createState() => _BuyingPageState();
}

class _BuyingPageState extends State<BuyingPage> {
  String dropdownValueSemester = "0";
  String dropdownValueBranch = "0";
  String dropdownValueCategory = "0";

  DropdownMenuItem<String> semesterNumber(int SemesterNumber) {
    return DropdownMenuItem(
      value: '$SemesterNumber',
      child: Center(
        child: Text(
          'Semester $SemesterNumber',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Buying Something?',
          ),
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
                      'We\'ll need some more info first.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                      items: [
                        DropdownMenuItem(
                          value: "0",
                          child: Center(
                            child: Text('Semester'),
                          ),
                        ),
                        semesterNumber(1),
                        semesterNumber(2),
                        semesterNumber(3),
                        semesterNumber(4),
                        semesterNumber(5),
                        semesterNumber(6),
                        semesterNumber(7),
                        semesterNumber(8),
                      ],
                      icon: Icon(
                        Icons.arrow_downward,
                      ),
                      iconSize: 20,
                      underline: Container(
                        height: 2,
                        color: Colors.blueAccent,
                      ),
                      onChanged: (String value) {
                        setState(() {
                          dropdownValueSemester = value;
                        });
                      },
                      hint: Text('Semester'),
                      value: dropdownValueSemester,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                      items: [
                        DropdownMenuItem(
                          value: "0",
                          child: Center(
                            child: Text('Branch'),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "1",
                          child: Center(child: Text('EE')),
                        ),
                        DropdownMenuItem(
                          value: "2",
                          child: Center(child: Text('CSE')),
                        ),
                        DropdownMenuItem(
                          value: "3",
                          child: Center(child: Text('CE')),
                        ),
                        DropdownMenuItem(
                          value: "4",
                          child: Center(child: Text('ME')),
                        ),
                      ],
                      icon: Icon(
                        Icons.arrow_downward,
                      ),
                      iconSize: 20,
                      underline: Container(
                        height: 2,
                        color: Colors.blueAccent,
                      ),
                      onChanged: (String value) {
                        setState(() {
                          dropdownValueBranch = value;
                        });
                      },
                      hint: Text('Branch'),
                      value: dropdownValueBranch,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                      items: [
                        DropdownMenuItem(
                          value: "0",
                          child: Center(
                            child: Text('Product Category'),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "1",
                          child: Center(child: Text('Textbooks')),
                        ),
                        DropdownMenuItem(
                          value: "2",
                          child: Center(child: Text('Cycles')),
                        ),
                        DropdownMenuItem(
                          value: "3",
                          child: Center(child: Text('Stationery')),
                        ),
                        DropdownMenuItem(
                          value: "4",
                          child: Center(child: Text('Yoga Mats')),
                        ),
                      ],
                      icon: Icon(
                        Icons.arrow_downward,
                      ),
                      iconSize: 20,
                      underline: Container(
                        height: 2,
                        color: Colors.blueAccent,
                      ),
                      onChanged: (String value) {
                        setState(() {
                          dropdownValueCategory = value;
                        });
                      },
                      hint: Text('Branch'),
                      value: dropdownValueCategory,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100.0, vertical: 8.0),
                    child: MaterialButton(
                      child: Card(
                        color: Colors.blue,
                        child: ListTile(
                          leading: Icon(
                            Icons.search,
                            color: Colors.blue.shade100,
                          ),
                          title: Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          //direct to product catalog
                        });
                      },
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      child: Text(
                        'Interested in selling anything? Click here.',
                        style: TextStyle(fontSize: 10.0),
                      ),
                      onPressed: () {
                        setState(() {
                          buyorsell();
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
