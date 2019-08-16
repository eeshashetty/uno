import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: UnoHome(),
    );
  }
}

class UnoHome extends StatefulWidget {
  @override
  _UnoHomeState createState() => _UnoHomeState();
}

class _UnoHomeState extends State<UnoHome> {

  String dropdownValue = 'One';

    @override
    Widget build(BuildContext context) {EA
      return Scaffold(
        appBar: AppBar(title: Text('$dropdownValue'),),
        body: Center(
          child: DropdownButton<String>(
            value: dropdownValue,
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      );
  }
}
