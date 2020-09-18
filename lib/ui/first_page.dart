import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ui_practice/local/app_db.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_writedown.dart';
import 'package:ui_practice/ui/CreateAccount/create_account.dart';
import 'package:ui_practice/ui/LoginAccount/login.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_yesno.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
//      appBar: AppBar(
//        title: Text("Love Search"),
//      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Center(
                child: Icon(Icons.search,color: Colors.red,size: 100,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 60.0),
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
                padding: EdgeInsets.only(top: 20.0),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>(Login())),
//                    MaterialPageRoute(builder: (context)=>(PersonalInfoSelect())),
                  );
                },
                child: Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.lightGreenAccent,Colors.lightBlueAccent]
                      ),

                      borderRadius: BorderRadius.circular(40.0)
                  ),
                  child: Center(child: Text("LOGIN"),),
//            child: Text("LOGIN"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 90.0),
              ),
               Container(
                  width: 170.0,
                  height: 40.0,
//                  decoration: BoxDecoration(
//                      gradient: LinearGradient(
//                          begin: Alignment.topLeft,
//                          end: Alignment.bottomRight,
//                          colors: [Colors.yellow[300],Colors.blue[400]]
//                      ),
//                      borderRadius: BorderRadius.circular(18.0)
//                  ),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Text("Create new account  "),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>(CreateAccount())),
//                              MaterialPageRoute(builder: (context)=>(PersonalInfoWriteDown())),
                            );
                          },
                          child: Icon(Icons.arrow_forward,color: Colors.blue,),
                        )
                      ],
                    ),
                  ),
                ),

            ],
          ),
        ),

//        child: Column(
      ),

    );
  }
}
