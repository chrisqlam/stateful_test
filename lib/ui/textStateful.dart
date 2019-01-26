import 'package:flutter/material.dart';

class MemberText extends StatefulWidget {
  @override
  _MemberTextState createState() => _MemberTextState();
}

class _MemberTextState extends State<MemberText> {
  String memberName = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(memberName),
        RaisedButton(
          child: Text("Soyeon"),
          onPressed: soyeonButton,
          color: Colors.purple,
          textColor: Colors.white,
        ),
        RaisedButton(
          child: Text("Yuqi"),
          onPressed: yuqiButton,
          color: Colors.purple,
          textColor: Colors.white,
        )
      ],
    );
  }

  void soyeonButton() {
    setState(() => memberName = "Soyeon");
  }

  void yuqiButton() {
    setState(() => memberName = "Yuqi");
  }
}
