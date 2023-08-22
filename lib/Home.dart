import 'package:calculator/button2.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'button.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {

  /// variables
  double firstNum=0.0;
  double secondNum=0.0;
  var input='';
  var output='';
  var operation='';
  onButtonClick(value){
    if (value == "C" ){ input=''; output='';}
    else if (value == "="){ var userInput= input;
      userInput= input.replaceAll("X", "*");
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel cm = ContextModel();
      var finalValue = expression.evaluate(EvaluationType.REAL, cm);
      output=finalValue.toString();
      if(output.endsWith(".0")){output = output.substring(0, output.length-2);};
      input=output;

    }
    else{
      input = input + value;
    }
    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor:  Color(0xFF0E2433),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black54,
          leading: const Icon(Icons.settings, color: Colors.white),
          title: const Text(
            "Calculator",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          ),
          centerTitle: true,

        ),
        body: Column(children:[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(20),
            child: Text(
              input,
              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,fontSize: 30),
            ),
          ),
          SizedBox(
            height: 55,

          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(20),
            child: Text(
              output,
              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,fontSize: 40),
            ),
          ),
          Expanded(

            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                            myButton1(text: "V",onButtonPressed: onButtonClick,),
                            myButton1(text: "C",onButtonPressed: onButtonClick,),
                            myButton1(text: "X",onButtonPressed: onButtonClick,),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "(",onButtonPressed: onButtonClick,),
                            myButton1(text: ")",onButtonPressed: onButtonClick,),
                            myButton1(text: "%",onButtonPressed: onButtonClick,),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "1",onButtonPressed: onButtonClick,),
                            myButton1(text: "2",onButtonPressed: onButtonClick,),
                            myButton1(text: "3",onButtonPressed: onButtonClick,),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "4",onButtonPressed: onButtonClick,),
                            myButton1(text: "5",onButtonPressed: onButtonClick,),
                            myButton1(text: "6",onButtonPressed: onButtonClick,),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "7",onButtonPressed: onButtonClick,),
                            myButton1(text: "8",onButtonPressed: onButtonClick,),
                            myButton1(text: "9",onButtonPressed: onButtonClick,),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "0",onButtonPressed: onButtonClick,),
                            myButton1(text: "00",onButtonPressed: onButtonClick,),
                            myButton1(text: ".",onButtonPressed: onButtonClick,),

                          ]
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .25,
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                            myButton1(text: "/",onButtonPressed: onButtonClick,),
                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "*",onButtonPressed: onButtonClick,),
                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "-",onButtonPressed: onButtonClick,),
                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "+",onButtonPressed: onButtonClick,),
                          ]
                      ),
                      TableRow(
                          children: [
                            myButton2(text: "=",onButtonPressed: onButtonClick,),
                          ]
                      ),
                    ],
                  ),
                )
              ],),
          )
        ]
        )

    );
  }
}
