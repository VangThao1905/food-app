import 'package:flutter/material.dart';
import 'package:foodapp/category_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food App with Navigation',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Itim-Relugar',
            textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
                bodyText2: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
                subtitle1: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'MochiyPopOne-Regular'))),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Food\'s categories'),
          ),
          body: SafeArea(child: CategoryPage()),
        ));
  }
}
