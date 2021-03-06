import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';

import 'package:ui_practice/ui/CreateAccount/registration_two.dart';

class RegistrationOne extends StatefulWidget {
  @override
  _RegistrationOneState createState() => _RegistrationOneState();
}

class _RegistrationOneState extends State<RegistrationOne> {
  File selectedImage;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController(
      text: new DateTime.now().toString());
//  text:"Birthday");
//  final TextEditingController _genderController = TextEditingController();
//  final TextEditingController _divisionController = TextEditingController();
//  final TextEditingController _cityController = TextEditingController();
//  final TextEditingController _occupationController = TextEditingController();
//  final TextEditingController _heightController = TextEditingController();
//  final TextEditingController _weightController = TextEditingController();
//  final TextEditingController _eyeColorController = TextEditingController();
//  final TextEditingController _hairColorController = TextEditingController();
//  final TextEditingController _maritalStatus=TextEditingController();
//  final TextEditingController _profilePictureController = TextEditingController();
//  final TextEditingController _aboutYou = TextEditingController();

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
//    _genderController.dispose();
//    _divisionController.dispose();
//    _cityController.dispose();
//    _occupationController.dispose();
//    _heightController.dispose();
//    _weightController.dispose();
//    _eyeColorController.dispose();
//    _hairColorController.dispose();
//    _maritalStatus.dispose();
//    _profilePictureController.dispose();
//    _aboutYou.dispose();
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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 70.0),
                ),
//                Icon(Icons.assignment)
                Text("Registration Info",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black,
                  shadows:<Shadow>[
                    Shadow(
                      offset: Offset(3.0, 0.0),
                      blurRadius:4,
                      color: Color.fromARGB(255, 0, 0, 100),
                    ),
//                Shadow(
//                  offset: Offset(10.0, 10.0),
//                  blurRadius: 8.0,
//                  color: Color.fromARGB(125, 0, 0, 255),
//                ),
                  ],
                ),),
//                Padding(
//                  padding: EdgeInsets.only(top: 15.0),
//                ),
//                Container(
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Icon(Icons.lightbulb_outline,color: Colors.blue,),
//                      Icon(Icons.linear_scale,color: Colors.blue,),
//                      Icon(Icons.lightbulb_outline,color: Colors.grey,),
//                      Icon(Icons.linear_scale,color: Colors.grey,),
//                      Icon(Icons.lightbulb_outline,color: Colors.grey,),
//                      Icon(Icons.linear_scale,color: Colors.grey,),
//                      Icon(Icons.lightbulb_outline,color: Colors.grey,)
//                    ],
//                  ),
//                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Container(
                  width: 120,
                  height: 120,
                  child:Stack(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.person,size: 90,color: Colors.white,),
//                    color: Colors.grey[200],
                          height:124,
                          width: 240,
//                    margin:const EdgeInsets.only(left:46.0) ,
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            shape: BoxShape.circle,
//                      gradient: LinearGradient(
//                          begin: Alignment.topLeft,
//                          end: Alignment.bottomRight,
//                          colors: [Colors.grey,Colors.yellow]
//                      ),
                          )
                      ),
                      GestureDetector(
                        onTap: (){
                          pickImageFromGallary();
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.fromLTRB(80, 80, 0, 0),
                          child: Icon(Icons.add,color: Colors.white,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.all(new Radius.circular(150.0)),
                    border: Border.all( color: Colors.white12,width: 3),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),
                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
//                      Container(
//                          child: Text("Name",style: TextStyle(color: Colors.blue,fontSize: 16),),
//                        padding: EdgeInsets.only(left: 10),
//                      ),
                      Container(
//                        decoration: BoxDecoration(
//                          gradient: LinearGradient(
//                              begin: Alignment.topLeft,
//                              end: Alignment.bottomRight,
//                              colors: [Colors.white,Colors.lightBlueAccent]
//                          ),
//                            borderRadius: BorderRadius.circular(20.0)
//                        ),
                        child: TextFormField(
                          controller: _nameController,
                          maxLines: 1,
                          validator: (value){
                            if(value.length<1 || value.length>255){
                              return "Name must be within 1 to 255 characters";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(color: Colors.blue),

//                              border: OutlineInputBorder(
//                                  borderRadius: BorderRadius.circular(20)
//
//                              )
                          ),
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
                        MaterialPageRoute(builder: (context) => RegistrationTwo())
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
                Padding(
                  padding: EdgeInsets.only(top: 120.0),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.lens,color: Colors.blue,size: 12),
                      Padding(padding: EdgeInsets.only(left: 5),),
//                      Icon(Icons.linear_scale,color: Colors.blue,),
                      Icon(Icons.lens,color: Colors.grey,size: 12),
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
  pickImageFromGallary(){
    ImagePicker.pickImage(source: ImageSource.gallery).then((image){
      setState(() {
        selectedImage=image;
      });
//      print("SelectedImage $selectedImage");
//      imgString=base64Encode(selectedImage.readAsBytesSync());
    });
  }
}


