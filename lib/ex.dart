import 'package:flutter/material.dart';

class exemple extends StatefulWidget {
  exemple({Key key}) : super(key: key);

  @override
  State<exemple> createState() => _exempleState();
}

class _exempleState extends State<exemple> {
  int _text = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_text.toString()),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(100),
          ),
          child: TextButton(
            onPressed: _changeText,
            child: Text("Change Text"),
          ),
        )
      ],
    );
  }

  void _changeText() {
    setState(() {
      _text += 1;
    });
  }
}
