import 'package:flutter/material.dart';

class Ymargin extends StatelessWidget {
  final double value;
  const Ymargin(
    this.value, 
    { // initializing the value
    super.key,// super.key is used to access the key of the parent class
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}
