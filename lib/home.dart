import 'package:coffee_card/coffee_prefs.dart';
import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('MyApp',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          backgroundColor: Colors.brown[700]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            padding: const EdgeInsets.all(20),
            color: Colors.brown[200],
            child: const StyledBodyText('How I like my coffe??'),
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.all(20),
            color: Colors.brown[100],
            child: const CoffeePrefs(),
          ),
          Expanded(
              child: Image.asset(
            'assets/img/coffee_bg.jpg',
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          )),
        ],
      ),
    );
  }
}
