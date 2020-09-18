import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ui_practice/ui/LoginAccount/main_login.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.pink,
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 70.0),
                ),
                Container(
                  child: TextFormField(
                    controller: _emailController,
                    maxLines: 1,
                    validator: (value) {
//                      if(value.length < 1 || value.length > 255) {
//                        return "Name must be within 1 to 255 characters";
//                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.blueAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Container(
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    maxLines: 1,
                    validator: (value) {
//                      if(value.length < 1 || value.length > 255) {
//                        return "Name must be within 1 to 255 characters";
//                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.blueAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                ButtonTheme(
                  minWidth: 270,
                  height: 40,
                  child: RaisedButton(
                    color: Colors.lightBlueAccent,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>MainLogin()));
                    },
                    child: Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
