import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
  textformfield({
    Key? key,
    required this.text,
    this.controller,
    this.validator,
  }) : super(key: key);

  final String text;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          fillColor: Colors.grey[250],
          hintText: text,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 85, 77, 77),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(0, 158, 158, 158), width: 2.0),
            borderRadius: BorderRadius.circular(16.0),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        ),
      ),
    );
  }
}
