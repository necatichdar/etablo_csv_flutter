import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Csv',
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        'home_page': (BuildContext context) => HomePage(),
      },
    );
  }
}
