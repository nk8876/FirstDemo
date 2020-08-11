import 'package:flutter/material.dart';
import 'package:flutterdemo/bgImage.dart';
import 'package:flutterdemo/main.dart';
import 'package:flutterdemo/pages/home_pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userName = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BgImage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Form(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  hintStyle: TextStyle(fontSize: 12.0),
                                  labelText: "Username"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  hintStyle: TextStyle(fontSize: 12.0),
                                  labelText: "Password"),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage()));
                          Navigator.pushNamed(context, "/home");
                        },
                        child: Text("Sign In"),
                        color: Colors.orange,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
