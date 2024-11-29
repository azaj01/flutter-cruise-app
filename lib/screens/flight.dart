import 'package:flutter/material.dart';

class Flight extends StatelessWidget {
  const Flight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Icons.flight)),
    );
  }
}
