import 'package:calculator_app/utils/calculator_functions.dart';
import 'package:calculator_app/utils/margins/y_margin.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/widgets/custom_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  CalculatorFunctions calcfunc = CalculatorFunctions(); //creating an object/instance of the CalculatorFunctions class
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            // A safe area that avoids the display cutout, if present.
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:
                20.0, // setting the horizontal padding of the calculator
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child:  Text(
                  calcfunc.expression,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
               Text(
                calcfunc.result,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              const Ymargin(20), // using the custom margin widget
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtons(
                    // initializing the custom button
                    buttonText: 'C',
                    buttonColor: Colors.grey,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('C');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '⌫',
                    buttonColor: Colors.grey,
                    textColor: Colors.white,
                    onPressed: () {
                         setState(() {
                        calcfunc.pressedButtonAction('⌫');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '%',
                    buttonColor: Colors.grey,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('%');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '/',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('/');
                      });
                    },
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButtons(
                      buttonText: '7',
                      buttonColor: Colors.white12,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                        calcfunc.pressedButtonAction('7');
                      });
                      },
                    ),
                    CustomButtons(
                      buttonText: '8',
                      buttonColor: Colors.white12,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                        calcfunc.pressedButtonAction('8');
                      });
                      },
                    ),
                    CustomButtons(
                      buttonText: '9',
                      buttonColor: Colors.white12,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                        calcfunc.pressedButtonAction('9');
                      });
                      },
                    ),
                    CustomButtons(
                      buttonText: '*',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                        calcfunc.pressedButtonAction('*');
                      });
                      },
                    ),
                  ],
                ),
              ),
              const Ymargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtons(
                    buttonText: '4',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('4');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '5',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('5');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '6',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('6');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '-',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('-');
                      });
                    },
                  ),
                ],
              ),
              const Ymargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtons(
                    buttonText: '1',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('1');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '2',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('2');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '3',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('3');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '+',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('+');
                      });
                    },
                  )
                ],
              ),
              const Ymargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtons(
                    buttonText: '0',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('0');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '.',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('.');
                      });
                    },
                  ),
                  CustomButtons(
                    buttonText: '00',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calcfunc.pressedButtonAction('00');
                      });
                    },
                  ),
                   CustomButton1(
                    buttonText: '=',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: (){
                      setState(() {
                        calcfunc.pressedButtonAction('=');
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
