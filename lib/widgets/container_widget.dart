import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.textSubtitle,
      required this.ontap})
      : super(key: key);

  final String text, textSubtitle;
  final IconData icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 12,
        // color: Colors.blueAccent,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: Colors.lightBlue.shade100,

          border: Border.all(
            color: Colors.blueAccent.shade100,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(4.0), child: Icon(icon)),
                Center(
                  child: Text(
                    textSubtitle,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
