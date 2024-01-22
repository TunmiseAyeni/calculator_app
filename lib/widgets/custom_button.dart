import 'package:flutter/material.dart';
//we use stateless widget because we are not changing the state of the button
class CustomButtons extends StatelessWidget {
   //this keyword is used to refer to the current instance of the class
  const CustomButtons(
    {
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  }
  );
  //  Creating this variables allows us to dynamically change the parameters of the button, because it is a custom button
  //we are adding these parameters to the constructor of the class
 
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed; // VoidCallback is a function that doesn't take any arguments and doesn't return anything

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size; // getting the size of the screen, so that we can use it to set the size of the button
    return SizedBox(
      // height: size.height * 0.14, // setting the height of the button, 8% of the screen height
      // width: size.width * 0.12, // setting the width of the button, 8% of the screen width
      child: TextButton( // A text button that can be customized with text, an icon, or both.
        onPressed:  onPressed,
        style: TextButton.styleFrom(
          // styling the button, default values
          backgroundColor: buttonColor,
          shape: const CircleBorder(), // gives the button a circular shape
          alignment: Alignment.center,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 25,
            fontFamily: 'Noto'
          ),
        ),
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton1(
    {
      super.key,
      required this.buttonText,
      required this.buttonColor,
      required this.textColor,
      required this.onPressed,
    }
    );

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
          ),
        alignment: Alignment.center,
      ),
      child:  Text(
        buttonText,
        style: TextStyle(
          color: textColor,
          fontSize: 25,
          fontFamily: 'Noto'
        ),
      ),
    );
  }
}
