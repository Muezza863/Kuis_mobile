import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usname = "";
  String pass = "";

  Widget _usenameField() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          onChanged: (value) {
            usname = value;
          },
          decoration: InputDecoration(
              hintText: 'Username',
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10)
                  )
              )
          ),
        )
    );
  }

  Widget _passField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        obscureText: true,
        onChanged: (value) {
          pass = value;
        },
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),
      ),
    );
  }

  Widget _buttonLog() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 10),
      child: ElevatedButton(onPressed: _checkLog,
          child: Text('Login', style: TextStyle(color: Colors.black),)
      ),
      //color: Colors.blue,
    );
  }

  void _checkLog() {
    if (usname == 'admin' && pass == '123'){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage(usname: usname)));

    }else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Gagal")));
    };
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              // width: 300,
              // height: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                color: Colors.green
              ),
              child: Column(
                children: [
                  Container(
                    height: 150,
                  ),
                  Text("Bela Negara",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Image.asset("assets/logo_upn.png"),
                  _usenameField(),
                  _passField(),
                  _buttonLog()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
