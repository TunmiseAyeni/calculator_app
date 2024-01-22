import 'package:flutter/material.dart';

class Xmargin extends StatelessWidget {
  final double value;
  const Xmargin( 
      this.value,
    {
      super.key,
    }
    );

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: value,
    );
  }
}