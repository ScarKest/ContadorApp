import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final _style = TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de Taps',
              style: _style,
            ),
            Text(
              '0',
              style: _style,
            )
          ],
        ),
      ),
    );
  }
}
