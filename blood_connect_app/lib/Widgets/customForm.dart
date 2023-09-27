import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Auth/validator.dart';

class CustomForm extends StatefulWidget {
  var TextController;
  var hintTextValue;

  // final _focusEmail = FocusNode();
  // final _focusPassword = FocusNode();

  CustomForm({
    required this.hintTextValue,
    required this.TextController,
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.hintTextValue == 'Password',
      controller: widget.TextController,
      // focusNode: _focusEmail,
      validator: (value) {
        if (widget.hintTextValue == 'Email') {
          return Validator.validateEmail(
            email: value,
          );
        } else if (widget.hintTextValue == 'Password') {
          return Validator.validatePassword(
            password: value,
          );
        } else {
          return Validator.validateField(
            name: value,
          );
        }
        // return null;
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hintTextValue,
        filled: true,
        fillColor: Color(0xFFF9DEE4),
        contentPadding: EdgeInsets.only(
          left: 24.w,
          bottom: 6.h,
          top: 8.h,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(153, 0, 0, 0),
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: Color.fromARGB(153, 247, 247, 247),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: Color.fromARGB(153, 255, 0, 0),
          ),
        ),
      ),
    );
  }
}
