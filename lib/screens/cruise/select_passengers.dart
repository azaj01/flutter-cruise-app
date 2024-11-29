import 'package:flutter/material.dart';

class SelectPassengers extends StatefulWidget {
  const SelectPassengers({Key? key}) : super(key: key);

  @override
  _SelectPassengersState createState() => _SelectPassengersState();
}

class _SelectPassengersState extends State<SelectPassengers> {
  int adult = 2;
  int child = 0;

  TextEditingController adultController = TextEditingController(text: "2");
  TextEditingController childController = TextEditingController(text: "0");

  @override
  void initState() {
    //this is init state in passenger
    super.initState();
  }

  increment(int type) {
    setState(() {
      try {
        if (type == 1) {
          int val = int.parse(adultController.text);
          if (val < 4) val++;
          adultController.text = val.toString();
        } else if (type == 2) {
          int val = int.parse(childController.text);
          if (val < 4) val++;
          childController.text = val.toString();
        }
      } catch (ex) {
        if (type == 1) {
          adultController.text = "1";
        } else if (type == 2) {
          childController.text = "1";
        }
      }
    });
  }

  decrement(int type) {
    setState(() {
      try {
        if (type == 1) {
          int val = int.parse(adultController.text);
          if (val > 0) val--;
          adultController.text = val.toString();
        } else if (type == 2) {
          int val = int.parse(childController.text);
          if (val > 0) val--;
          childController.text = val.toString();
        }
      } catch (ex) {
        if (type == 1) {
          adultController.text = "1";
        } else if (type == 2) {
          childController.text = "1";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Passengers',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text.rich(
                    TextSpan(style: TextStyle(fontSize: 18), children: [
                      TextSpan(
                        text: 'Adults ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '(12+)',
                      )
                    ]),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    decrement(1);
                  },
                  icon: const Icon(Icons.remove),
                ),
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: adultController,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    increment(1);
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text.rich(
                    TextSpan(style: TextStyle(fontSize: 18), children: [
                      TextSpan(
                        text: 'Child ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '(1 - 12)',
                      )
                    ]),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    decrement(2);
                  },
                  icon: const Icon(Icons.remove),
                ),
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.number,
                    controller: childController,
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    increment(2);
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height / 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18))),
              onPressed: () {},
              child: const Text(
                'Done',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
