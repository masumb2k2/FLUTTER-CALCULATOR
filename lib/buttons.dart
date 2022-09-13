import 'package:flutter/material.dart';
class button extends StatelessWidget {
  final String text;
  final int textcolor;
  final int backcolor;
  final Function callback;

  button({required this.text,required this.textcolor,required this.backcolor,required this.callback});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Color(backcolor),
        elevation: 10,
        margin: EdgeInsets.all(5),
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(color: Color(textcolor),
            fontSize: 23
            ),

          ),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}
