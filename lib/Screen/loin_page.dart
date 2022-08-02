import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/util/routes.dart';
import 'package:http/http.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  String name = "";
  String pass = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  //final _formKey = GlobalKey<FormState>();
  moveToHome(context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 3));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.cover,
                // height: 800,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Welcome To Graphix  Media !! Please Login $name $pass"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter UserName", labelText: "User Name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      obscureText: true,
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value == null) {
                          return "Password Is Not empaty";
                        } else if (value.length < 6) {
                          return "Password Should be 6 digit";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changebutton ? 50 : 140,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.circular(changebutton ? 50 : 8)),
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(170, 45)),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
