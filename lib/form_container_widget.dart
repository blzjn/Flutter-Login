import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Authentication

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final bool? isPasswordField;
  final String? hintText;
  final ValueChanged<String>? onChanged; // Add onChanged callback for updating email/password
  final bool? isEmailField; // Add a flag to identify email field

  const FormContainerWidget({
    Key? key,
    this.controller,
    this.isPasswordField,
    this.hintText,
    this.onChanged,
    this.isEmailField = false, // Default to false
  }) : super(key: key);

  @override
  _FormContainerWidgetState createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        style: TextStyle(color: Color.fromRGBO(225, 226, 221, 1)),
        controller: widget.controller,
        keyboardType: widget.isEmailField == true ? TextInputType.emailAddress : TextInputType.text, // Use email keyboard type for email field
        obscureText: widget.isPasswordField == true ? _obscureText : false,
        onChanged: widget.onChanged, // Pass onChanged callback
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          border: InputBorder.none,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Color.fromARGB(115, 235, 231, 231)),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: widget.isPasswordField == true
                ? Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: _obscureText == false ? Color.fromRGBO(190, 236, 1, 1) : Colors.grey,
                  )
                : SizedBox(), // Use SizedBox instead of Text for empty space
          ),
        ),
      ),
    );
  }
}
