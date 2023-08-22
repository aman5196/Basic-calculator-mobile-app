import 'package:calculator/button2.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
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
              "15 + 32 + 8",
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
              "55",
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
                            myButton1(text: "V"),
                            myButton1(text: "C"),
                            myButton1(text: "X"),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "("),
                            myButton1(text: ")"),
                            myButton1(text: "%"),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "1"),
                            myButton1(text: "2"),
                            myButton1(text: "3"),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "4"),
                            myButton1(text: "5"),
                            myButton1(text: "6"),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "7"),
                            myButton1(text: "8"),
                            myButton1(text: "9"),

                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "0"),
                            myButton1(text: "00"),
                            myButton1(text: "."),

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
                            myButton1(text: "/"),
                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "*"),
                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "-"),
                          ]
                      ),
                      TableRow(
                          children: [
                            myButton1(text: "+"),
                          ]
                      ),
                      TableRow(
                          children: [
                            myButton2(text: "="),
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
