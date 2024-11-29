import 'package:cruise_app/widgets/elevated_button_widget.dart';
import 'package:flutter/material.dart';

class ContactUsForm extends StatefulWidget {
  const ContactUsForm({Key? key}) : super(key: key);

  @override
  _ContactUsFormState createState() => _ContactUsFormState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _ContactUsFormState extends State<ContactUsForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _contactNoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  static const _sizedBox = SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: _nameController,
              validator: null,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            _sizedBox,
            TextFormField(
              controller: _contactNoController,
              validator: null,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
            ),
            _sizedBox,
            TextFormField(
              controller: _emailController,
              validator: null,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            _sizedBox,
            TextFormField(
              controller: _cityController,
              validator: null,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: 'Your City',
                border: OutlineInputBorder(),
              ),
            ),
            _sizedBox,
            ElevatedButtonWidget(
                textTitleForButton: 'SUBMIT', clickButton: () {}),
            _sizedBox,
            Row(
              children: const [
                Icon(
                  Icons.headset_mic_rounded,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Help Desk',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            _sizedBox,
            const Text(
              '+91-8595078302 (10am-8pm)',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
