import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';

class FilterSearch extends StatefulWidget {
  @override
  _FilterSearchState createState() => _FilterSearchState();
}

class _FilterSearchState extends State<FilterSearch> {
  File selectedImage;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();


  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _divisionController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _eyeColorController = TextEditingController();
  final TextEditingController _hairColorController = TextEditingController();
  final TextEditingController _maritalStatus=TextEditingController();

  String _selectedDivision="Ayeyarwady";
  String _selectedMaritalStatus="Single";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _genderController.dispose();
    _divisionController.dispose();
    _cityController.dispose();
    _occupationController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _eyeColorController.dispose();
    _hairColorController.dispose();
    _maritalStatus.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//      appBar: AppBar(
//        title: Text("About Yourself"),
//      ),
      body: Form(
        key: _formKey,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(alignment: Alignment.topLeft,child: new Text("Gender",style: TextStyle(fontSize: 17),),),
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
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),

                Align(alignment: Alignment.topLeft,child: new Text("Region/State",style: TextStyle(fontSize: 17),),),
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
                            value: _selectedDivision,
                            items: <String>['Ayeyarwady','Bago','Chin','Kachin','Kayah','Kayin','Magwe','Mandalay','Mon','Rakhaing','Sagaing','Shan','Taninhary','Yangon'].map((String value){
                              return new DropdownMenuItem<String>(
                                  value: value,
                                  child:new Text(value)
                              );
                            }).toList(),
                            onChanged: (String value){
                              setState(() {
                                _selectedDivision=value;
                              });
                            },
                          )
                      )
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Align(alignment: Alignment.topLeft,child: new Text("City",style: TextStyle(fontSize: 17),),),
                Container(
                  child: TextFormField(
                    controller: _cityController,
                    maxLines: 1,
                    validator: (value){
                      if(value.length<1 || value.length>255){
                        return "City must be within 1 to 255 characters";
                      }
                      return null;
                    },
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),

                Align(alignment: Alignment.topLeft,child: new Text("Occupation",style: TextStyle(fontSize: 17),),),
                Container(
                  child: TextFormField(
                    controller: _occupationController,
                    maxLines: 1,
                    validator: (value){
                      if(value.length<1 || value.length>255){
                        return "Occupation must be within 1 to 255 characters";
                      }
                      return null;
                    },
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),

                Align(alignment: Alignment.topLeft,child: new Text("Height",style: TextStyle(fontSize: 17),),),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black26,
                      width: 1,
                    ),
                  ),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Align(alignment: Alignment.topLeft,child: new Text("Weight",style: TextStyle(fontSize: 17),),),
                Container(
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

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),

                Align(alignment: Alignment.topLeft,child: new Text("Eye Color",style: TextStyle(fontSize: 17),),),
                Container(
                  child: TextFormField(
                    controller: _eyeColorController,
                    maxLines: 1,
                    validator: (value){
                      if(value.length<1 || value.length>255){
                        return "Eye Color must be within 1 to 255 characters";
                      }
                      return null;
                    },
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),

                Align(alignment: Alignment.topLeft,child: new Text("Hair Color",style: TextStyle(fontSize: 17),),),
                Container(
                  child: TextFormField(
                    controller: _hairColorController,
                    maxLines: 1,
                    validator: (value){
                      if(value.length<1 || value.length>255){
                        return "Hair Color must be within 1 to 255 characters";
                      }
                      return null;
                    },
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),

                Align(alignment: Alignment.topLeft,child: new Text("Marital Status",style: TextStyle(fontSize: 17),),),
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
                            value: _selectedMaritalStatus,
                            items: <String>['Single','Separated','Married','Divorced','Widow','Widower'].map((String value){
                              return new DropdownMenuItem<String>(
                                  value: value,
                                  child:new Text(value)
                              );
                            }).toList(),
                            onChanged: (String value){
                              setState(() {
                                _selectedMaritalStatus=value;
                              });
                            },
                          )
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Row(
                  children: <Widget>[
                    ButtonTheme(
//                      minWidth: 270,
//                      height: 40,
                      child: RaisedButton(
                        color: Colors.lightBlueAccent,
                        onPressed: (){
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context)=>AboutYourself()));
                        },
                        child: Text("Reset"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    ButtonTheme(
//                      minWidth: 270,
//                      height: 40,
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("Done"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


