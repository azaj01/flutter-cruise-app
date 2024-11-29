import 'package:flutter/material.dart';

class Train extends StatelessWidget {
  const Train({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Icons.train)),
    );
  }
}
