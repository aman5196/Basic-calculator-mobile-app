import 'package:flutter/material.dart';

class myButton1 extends StatefulWidget {
  final String text;
  final Color tColor ;
  final Color buttonBgColor;
  const myButton1({super.key, required this.text, this.buttonBgColor= const Color(0xFF0B344F),this.tColor=Colors.white });

  @override
  State<myButton1> createState() => _myButton1State();
}

class _myButton1State extends State<myButton1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height * 0.1,
      color: Colors.blueGrey,
      margin: const EdgeInsets.all(0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.all(0),
            backgroundColor: widget.buttonBgColor,
          ),
          onPressed: (){},
          child:  Text(widget.text ,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: widget.tColor,
            fontSize: 20,
          ),
          )
      ),
    );
  }
}

