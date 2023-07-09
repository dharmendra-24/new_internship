import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  TextEditingController PhoneController = TextEditingController();

  String _displayPhone = '';

  @override
  void dispose() {
    PhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: TextField(
        controller: PhoneController,
        keyboardType: TextInputType.number,
        maxLength: 12,
        decoration: const InputDecoration(
          hintText: 'XXX - XXXX - XXXXX',
          counterText: '',
          hintStyle: TextStyle(color: Colors.white),
        ),
        onChanged: (value) {
          setState(() {
            _displayPhone = value.padRight(10, 'X').substring(2);
          });
        },
      ),
    );
  }
}
