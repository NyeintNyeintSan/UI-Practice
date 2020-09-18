import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ui_practice/local/app_db.dart';
import 'package:ui_practice/ui/about_yourself.dart';
import 'package:ui_practice/ui/CreateAccount/registration_one.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
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
                  padding: EdgeInsets.only(top: 55.0),
                ),
                Container(
                  child: Text("CREATE YOUR ACCOUNT",
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0, 0.0),
                        blurRadius: 1.5,
                        color: Color.fromARGB(200, 0, 0, 100),
                      )
                    ]
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                ),
                Container(
                  width: 300.0,
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
//                    hintStyle: TextStyle(color: Colors.blueAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        prefixIcon: Icon(Icons.email)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Container(
                  width: 300.0,
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
//                    hintStyle: TextStyle(color: Colors.blueAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        prefixIcon: Icon(Icons.lock)
                    ),
                  ),
//              decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(18.0)
//              ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Container(
                  width: 300.0,
                  child: TextFormField(
                    obscureText: true,
                    controller: _confirmpasswordController,
                    maxLines: 1,
                    validator: (value) {
//                      if(value.length < 1 || value.length > 255) {
//                        return "Name must be within 1 to 255 characters";
//                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
//                    hintStyle: TextStyle(color: Colors.blueAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        prefixIcon: Icon(Icons.lock_outline)
                    ),
                  ),
//              decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(18.0)
//              ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>(RegistrationOne())),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 45.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.lightGreenAccent,Colors.lightBlueAccent]
                        ),

                        borderRadius: BorderRadius.circular(40.0)
                    ),
                    child: Center(child: Text("NEXT"),),
//            child: Text("LOGIN"),
                  ),
                ),
//                ButtonTheme(
//                  minWidth: 270,
//                  height: 40,
//                  child: RaisedButton(
//                    color: Colors.lightBlueAccent,
//                    onPressed: (){
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context)=>AboutYourself()));
//                    },
//                    child: Text("Next"),
//                  ),
//                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
