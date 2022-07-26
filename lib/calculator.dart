import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  //buttonNumber = numbers, duh
  //buttonOperator = +,-,*,/,=
  //buttonOther = c,sign,%,.
  static Color black = Colors.black;
  static Color buttonTextDark = Colors.black;
  static Color buttonTextLight = Colors.white;
  static Color buttonNumber = Color(0xff000080);
  static Color buttonOperator = Color(0xff40e0d0);
  static Color buttonOther = Color(0xffff00ff);
  static Color bgColor = Colors.pinkAccent.shade100;
  // static Color black = Colors.black;
  // static Color buttonTextDark = Colors.black;
  // static Color buttonTextLight = Colors.white;
  // static Color buttonNumber = Colors.grey.shade900;
  // static Color buttonOperator = Colors.orange;
  // static Color buttonOther = Colors.grey;

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget button(String btnText, Color textColor, Color btnColor) {
    //Elevated button, from Material lib.  onPressed, do nothing,
    return ElevatedButton(
        onPressed: () => {},
        child: Text(
          btnText,
          style: TextStyle(
              fontSize: 25, fontFamily: "Helvetica", color: textColor),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(70, 70),
          shape: const CircleBorder(),
          primary: btnColor,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Calculator.bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("\"FOR ADDING THINGS\""),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal, Colors.pink],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "∞",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 80),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button('c', Colors.black, Calculator.buttonOther),
                  button('+/-', Colors.black, Calculator.buttonOther),
                  button('%', Colors.black, Calculator.buttonOther),
                  button('/', Colors.white, Calculator.buttonOperator),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button('7', Colors.white, Calculator.buttonNumber),
                  button('8', Colors.white, Calculator.buttonNumber),
                  button('9', Colors.white, Calculator.buttonNumber),
                  button('x', Colors.white, Calculator.buttonOperator),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button('4', Colors.white, Calculator.buttonNumber),
                  button('5', Colors.white, Calculator.buttonNumber),
                  button('6', Colors.white, Calculator.buttonNumber),
                  button('-', Colors.white, Calculator.buttonOperator),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button('1', Colors.white, Calculator.buttonNumber),
                  button('2', Colors.white, Calculator.buttonNumber),
                  button('3', Colors.white, Calculator.buttonNumber),
                  button('+', Colors.white, Calculator.buttonOperator),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                      child: Text('0',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          )),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Calculator.buttonNumber,
                    ),
                  ),
                  button('.', Colors.white, Calculator.buttonOther),
                  button('=', Colors.white, Colors.orange),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
