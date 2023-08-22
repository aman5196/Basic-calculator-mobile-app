import 'package:flutter/material.dart';

class myButton2 extends StatefulWidget {
  final String text;
  final Color tColor ;
  final Color buttonBgColor;
  final Function(String) onButtonPressed;
  const myButton2({super.key, required this.text, this.buttonBgColor=const Color(0xFF296D98),this.tColor=Colors.white, required this.onButtonPressed });

  @override
  State<myButton2> createState() => _myButton1State();
}

class _myButton1State extends State<myButton2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height * 0.2,
      color: Colors.blueGrey,
      margin: const EdgeInsets.all(0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.all(0),
            backgroundColor: widget.buttonBgColor,
          ),
          onPressed: () => widget.onButtonPressed(widget.text),
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

