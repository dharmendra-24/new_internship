import 'package:flutter/material.dart';

class AadhaarNumberScreen extends StatefulWidget {
  @override
  _AadhaarNumberScreenState createState() => _AadhaarNumberScreenState();
}

class _AadhaarNumberScreenState extends State<AadhaarNumberScreen> {
  TextEditingController _aadhaarController = TextEditingController();
  String _displayAadhaar = '';

  @override
  void dispose() {
    _aadhaarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: TextField(
        controller: _aadhaarController,
        keyboardType: TextInputType.number,
        maxLength: 12,
        decoration: const InputDecoration(
          hintText: 'XXX - XXXX - XXXXX',
          counterText: '',
          hintStyle: TextStyle(color: Colors.white),
        ),
        onChanged: (value) {
          setState(() {
            _displayAadhaar = value.padRight(12, 'X').substring(2);
          });
        },
      ),
    );
  }
}
