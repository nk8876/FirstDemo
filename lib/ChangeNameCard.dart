import 'package:flutter/material.dart';
import 'package:flutterdemo/bgImage.dart';

class ChangeNmaeCard extends StatelessWidget {
  const ChangeNmaeCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        SizedBox(
          height: 16,
        ),
        Text(
          myText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Enter something here",
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
