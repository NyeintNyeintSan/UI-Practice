import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_select.dart';
import 'dart:io';

import 'package:ui_practice/ui/CreateAccount/registration_four.dart';

class RegistrationFive extends StatefulWidget {
  @override
  _RegistrationFiveState createState() => _RegistrationFiveState();
}

class _RegistrationFiveState extends State<RegistrationFive> {
  File selectedImage;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _eyeColorController = TextEditingController();
  final TextEditingController _hairColorController = TextEditingController();
  final TextEditingController _skinColorController = TextEditingController();
  final TextEditingController _maritalStatus=TextEditingController();
  final TextEditingController _aboutYou = TextEditingController();

  String _selectedDivision="Ayeyarwady";
  String _selectedSkinColor="White";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    _eyeColorController.dispose();
    _hairColorController.dispose();
    _maritalStatus.dispose();
    _aboutYou.dispose();
    _skinColorController.dispose();
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
//                Icon(Icons.assignment)
                Text("Physical Appearrance",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 22,color: Colors.amber,
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
                  width: 290,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Align(alignment: Alignment.topLeft,child: new Text("Height",style: TextStyle(fontSize: 16,color: Colors.pink),),),

//                      Padding(
//                        padding: EdgeInsets.only(top:10),
//                      ),
//                      Container(
//                        height: 60,
//                        decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(12),
//                          border: Border.all(
//                            color: Colors.black26,
//                            width: 1,
//                          ),
//                        ),
//                        child:
                    Row(
                      children: <Widget>[
                        Text("Height   ( in feet and inches )",style: TextStyle(fontSize: 16,color: Colors.amber),),
//                        Text("    (feet and inches)",style: TextStyle(color:Colors.deepPurpleAccent[100]),)
                      ],
                    ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 40,
                              child: TextField(
                                keyboardType: TextInputType.number,
//                          decoration: InputDecoration(
//
//                              border: OutlineInputBorder(
//                                  borderRadius: BorderRadius.circular(10)
//                              )
//                          ),
                              ),
                            ),
                            Text(" '    ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Container(
                              width: 50,
                              height: 40,
                              child: TextField(
                                keyboardType: TextInputType.number,
//                          decoration: InputDecoration(
//
//                              border: OutlineInputBorder(
//                                  borderRadius: BorderRadius.circular(10)
//                              )
//                          ),
                              ),

                            ),
                            Text(" ''    ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          ],
                        ),
//                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                Container(
                  width: 290,

                  child: TextFormField(
                    controller: _weightController,
                    maxLines: 1,
                    validator: (value){
//                      if(value.length<1 || value.length>255){
//                        return "Eye Color must be within 1 to 255 characters";
//                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Weight   ( in lbs )',
                        labelStyle: TextStyle(color: Colors.amber,fontSize: 16)
//                              border: OutlineInputBorder(
//                                  borderRadius: BorderRadius.circular(20)
//                              )
                    ),
                  ),

                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text("Skin Color",style: TextStyle(color: Colors.amber,fontSize: 16),),
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black26,
                            width: 1,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                            child:ButtonTheme(
                                alignedDropdown: true,
                                child: DropdownButton(
                                  value: _selectedSkinColor,
                                  items: <String>['White','Fair','Medium','Brown','Dark Brown'].map((String value){
                                    return new DropdownMenuItem<String>(
                                        value: value,
                                        child:new Text(value)
                                    );
                                  }).toList(),
                                  onChanged: (String value){
                                    setState(() {
                                      _selectedSkinColor=value;
                                    });
                                  },
                                )
                            )
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
                        MaterialPageRoute(builder: (context) => PersonalInfoSelect())
                    );
                  },
                  child: Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.amber,Colors.lightBlueAccent]
                        ),

                        borderRadius: BorderRadius.circular(40.0)
                    ),
                    child: Center(child: Text("REGISTER"),),
//            child: Text("LOGIN"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70.0),
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
                      Icon(Icons.lens,color: Colors.blue,size: 12),
                      Padding(padding: EdgeInsets.only(left: 5),),
//                      Icon(Icons.linear_scale,color: Colors.grey),
                      Icon(Icons.lens,color: Colors.blue,size: 12),
                      Padding(padding: EdgeInsets.only(left: 5),),
//                      Icon(Icons.linear_scale,color: Colors.grey,),
                      Icon(Icons.lens,color: Colors.blue,size: 12),
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


