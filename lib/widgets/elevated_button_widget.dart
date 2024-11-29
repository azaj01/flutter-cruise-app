import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {Key? key, required this.textTitleForButton, required this.clickButton})
      : super(key: key);
  final String textTitleForButton;
  final VoidCallback clickButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          fixedSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height / 15),
        ),
        onPressed: clickButton,
        child: Text(textTitleForButton),
      ),
    );
  }
}
