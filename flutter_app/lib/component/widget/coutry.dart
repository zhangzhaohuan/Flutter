import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
class TextFieldDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CountryCodePicker(
        onChanged: print,
        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
        initialSelection: 'IT',
        favorite: ['+39','FR'],
      ),
    );
  }
}
