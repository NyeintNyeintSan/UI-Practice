import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';

import 'package:ui_practice/ui/CreateAccount/registration_three.dart';

class RegistrationTwo extends StatefulWidget {
  @override
  _RegistrationTwoState createState() => _RegistrationTwoState();
}

class _RegistrationTwoState extends State<RegistrationTwo> {
  File selectedImage;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController(
      text: new DateTime.now().toString());
//  text:"Birthday");
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _divisionController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _eyeColorController = TextEditingController();
  final TextEditingController _hairColorController = TextEditingController();
  final TextEditingController _maritalStatus=TextEditingController();
  final TextEditingController _profilePictureController = TextEditingController();
  final TextEditingController _aboutYou = TextEditingController();

  String _selectedDivision="Ayeyarwady";
  String _selectedMaritalStatus="Single";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _dobController.dispose();
    _genderController.dispose();
    _divisionController.dispose();
    _cityController.dispose();
    _occupationController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _eyeColorController.dispose();
    _hairColorController.dispose();
    _maritalStatus.dispose();
    _profilePictureController.dispose();
    _aboutYou.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.blue,
//      appBar: AppBar(
//        iconTheme: IconThemeData(
//          color: Colors.black, //change your color here
//        ),
////        title: new mediumText(text: "Transparent AppBar"),
//        backgroundColor: Colors.white,
//
//        title: Text("Create Account",style: (TextStyle(color: Colors.black)),),
//      ),
      body: Form(
        key: _formKey,
        child: Container(
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.topLeft,
//                  end: Alignment.bottomRight,
//                  colors: [Colors.white,Colors.grey[200]]
//              ),
//          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 80.0),
                ),
//                Container(
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Icon(Icons.lightbulb_outline,color: Colors.blue,),
//                      Icon(Icons.linear_scale,color: Colors.blue,),
//                      Icon(Icons.lightbulb_outline,color: Colors.blue,),
//                      Icon(Icons.linear_scale,color: Colors.blue,),
//                      Icon(Icons.lightbulb_outline,color: Colors.grey,),
//                      Icon(Icons.linear_scale,color: Colors.grey,),
//                      Icon(Icons.lightbulb_outline,color: Colors.grey,)
//                    ],
//                  ),
//                ),
//                Padding(
//                  padding: EdgeInsets.only(top: 30.0),
//                ),
//                Icon(Icons.assignment)
                Text("Birthday/Gender",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 22,color: Colors.orange,
//                  shadows:<Shadow>[
//                    Shadow(
//                      offset: Offset(3.0, 0.0),
//                      blurRadius:6,
//                      color: Color.fromARGB(255, 0, 0, 200),
//                    ),
////                Shadow(
////                  offset: Offset(10.0, 10.0),
////                  blurRadius: 8.0,
////                  color: Color.fromARGB(125, 0, 0, 255),
////                ),
//                  ],
                ),),
                Padding(
                  padding: EdgeInsets.only(top:40),
                ),

                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
//                     Container(
//                       child: Text("Date Of Birth",style: TextStyle(color: Colors.blue,fontSize: 16),),
//                       padding: EdgeInsets.only(left: 10),
//                     ),
                      Container(
                        width: 300,
                        child:  FormBuilder(
                          key: _fbKey,
                          initialValue: {
                            'date': DateTime.now(),
                            'accept_terms': false,
                          },
                          autovalidate: true,
                          child:  FormBuilderDateTimePicker(
                            attribute: "date",
                            inputType: InputType.date,
                            format: DateFormat("dd-MM-yyyy"),
//                           decoration:
//                           InputDecoration(
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(20)
//                               )
//                           ),
                            decoration: InputDecoration(
                                labelText: 'Birthday',
                                labelStyle: TextStyle(color: Colors.orange,fontSize: 20)
//                              border: OutlineInputBorder(
//                                  borderRadius: BorderRadius.circular(20)
//                              )
                            ),
                            onChanged: (value){
                              _dobController.text = value.toString();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Container(
                  width: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text("Gender",style: TextStyle(color: Colors.orange,fontSize: 16),),
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Radio(value: 0, groupValue: null, onChanged: null),
                            Text("Male"),
                            Radio(value: 1, groupValue: null, onChanged: null),
                            Text("Female")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RegistrationThree())
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 45.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.orange[300],Colors.lightBlueAccent]
                        ),

                        borderRadius: BorderRadius.circular(40.0)
                    ),
                    child: Center(child: Text("NEXT"),),
//            child: Text("LOGIN"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130.0),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.lens,color: Colors.blue,size: 12),
                      Padding(padding: EdgeInsets.only(left: 5),),
//                      Icon(Icons.linear_scale,color: Colors.blue,),
                      Icon(Icons.lens,color: Colors.blue,size: 12),
                      Padding(padding: EdgeInsets.only(left: 5),),
//                      Icon(Icons.linear_scale,color: Colors.grey,),
                      Icon(Icons.lens,color: Colors.grey,size: 12),
                      Padding(padding: EdgeInsets.only(left: 5),),
//                      Icon(Icons.linear_scale,color: Colors.grey),
                      Icon(Icons.lens,color: Colors.grey,size: 12),
                      Padding(padding: EdgeInsets.only(left: 5),),
//                      Icon(Icons.linear_scale,color: Colors.grey,),
                      Icon(Icons.lens,color: Colors.grey,size: 12),
                    ],
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


