import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final TextInputType? textType;
  final bool? isPassWord;
  final IconData? suffixIcon;
  final String formProperty;
  final Map<String , String> formValues;
  const CustomInputField({
    super.key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.textType, 
    this.isPassWord, 
    required this.formProperty, 
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: "",
      obscureText: isPassWord == null ? false : true,
      keyboardType: textType,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value){
        if(value == null) return "Este campo es requerido";
        return value.length < 3 ? "Minimo tres letras" : null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null  : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      
      ),
    );
  }
}