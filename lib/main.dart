import 'package:flutter/material.dart';
import 'screens/cart_screen.dart';
import 'screens/home_screen.dart';
import'models/products.dart';
import 'models/cart.dart';
import 'package:provider/provider.dart';
import'dart:ui';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MyApp(),
    ),
  );

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/homeScreen': (context) => HomeScreen(),
        '/cartScreen': (context) => CartScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 700),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFff0844), // Start color
                Color(0xFFffb199), // End color
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.all(81.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Products by',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(height: 5),
              Text(
                'Cash & Carry',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/1.png'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/homeScreen');
                },
                child: Text('Go'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
