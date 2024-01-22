// Purpose: Contains the functions that will be used to handle the calculator operations
import 'package:math_expressions/math_expressions.dart';

class CalculatorFunctions {
  //define the result and expression variable
  String expression = '';
  String result = '';
  //create a function that helps handle whatever button is pressed/clicked and also evaluate the expression
  void pressedButtonAction(String buttonText) {
    if (buttonText == 'C') {
      expression = '';
      result = '';
    } else if (buttonText == '⌫') {
      if (expression.isEmpty) {
        return;
      }
      expression = expression.substring(
          0,
          expression.length -
              1); // removing  the last character from the expression, when the backspace button is clicked
    } else if (buttonText == '=') {
      try {
        // a try-catch block is used to handle errors/exceptions that may occur when evaluating the expression.
        //try block contains code that may throw an exception
        Parser parser =
            Parser(); // creating a parser object. The parser class is used to parse the expression
        Expression exp = parser.parse(
            expression); // parsing the expression to the instance of the math expression created. The expression class is used to evaluate the expression
        ContextModel contextModel =
            ContextModel(); // used for evaluating the expression by substituting variables with values and evaluating the expression. // used to track the variables in the expression
        final evaluatedExpression = exp
            .evaluate(
                EvaluationType
                    .REAL, // evaluating the expression as a real number
                contextModel // passing the context model object to the evaluate method
                ); // evaluating the expression
        result =
            '${isInteger(evaluatedExpression) ? (evaluatedExpression as num).ceil() : '$evaluatedExpression'}'; //using the if statement to check if the evaluated expression is an integer or not
            // storing the evaluated expression in the result variable
        expression =
            result; // storing the evaluated expression in the expression variable
      } catch (e) {
        // catch block catches the exception thrown by the try block and handles it
        result =
            'Error $e'; // the error message is stored in the result variable
      }
    } else {
      expression +=
          buttonText; // adding the button text to the express on, if its not part of the action buttons clicked.
    }
  }

  //create a function that determines if a number is an integer or not
  bool isInteger(num value) =>
      value is int ||
      value ==
          value
              .roundToDouble(); // returns true if the value is an integer and false if it is not
}
