import 'package:flutter/material.dart';

class Bus extends StatelessWidget {
  const Bus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(Icons.directions_bus),
      ),
    );
  }
}
