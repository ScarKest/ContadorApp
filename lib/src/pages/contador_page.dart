import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _style = TextStyle(fontSize: 25);
  int _counter = 0;

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
              '$_counter',
              style: _style,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _floatingActionButtons(),
    );
  }

  Widget _floatingActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _counter++;
              setState(() {});
            }),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() => _counter--);
            }),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () {
              setState(() => _counter = 0);
            }),
        FloatingActionButton(
            child: Icon(Icons.exposure_plus_2),
            onPressed: () {
              setState(() => _counter = _counter + 2);
            }),
      ],
    );
  }
}
