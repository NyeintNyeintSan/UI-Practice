import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:io';

class AboutYourself extends StatefulWidget {
  @override
  _AboutYourselfState createState() => _AboutYourselfState();
}

class _AboutYourselfState extends State<AboutYourself> {
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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                ),
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
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.lightbulb_outline,color: Colors.blue,),
                      Icon(Icons.linear_scale,color: Colors.blue,),
                      Icon(Icons.lightbulb_outline,color: Colors.grey,),
                      Icon(Icons.linear_scale,color: Colors.grey,),
                      Icon(Icons.lightbulb_outline,color: Colors.grey,)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
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
                  padding: EdgeInsets.only(top:20),
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
                  padding: EdgeInsets.only(top: 20.0),
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
                               labelStyle: TextStyle(color: Colors.blue,fontSize: 16)
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
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Container(
                  width: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text("Gender",style: TextStyle(color: Colors.blue,fontSize: 16),),
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
                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text("Region/State",style: TextStyle(color: Colors.blue,fontSize: 16),),
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
                    ],
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
                        child: Text("City",style: TextStyle(color: Colors.blue,fontSize: 16),),
                        padding: EdgeInsets.only(left: 10),
                      ),
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
                    ],
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
                        child: Text("Occupation",style: TextStyle(color: Colors.blue,fontSize: 16),),
                        padding: EdgeInsets.only(left: 10),
                      ),
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
                    ],
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
                Align(alignment: Alignment.topLeft,child: new Text("Profile Picture",style: TextStyle(fontSize: 17),),),
                Container(
//                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black26,
                      width: 2,
                    ),
                  ),
                  child:
                    selectedImage==null?
                    Center(
                      child: IconButton(
                        icon: Icon(Icons.add,color: Colors.blue,),
                        onPressed: (){
                          pickImageFromGallary();
                        },
                      ),
                    ):
                        Container(
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                            image: new FileImage(selectedImage),
                            ),
                          ),
                          child: new Stack(
                            children: <Widget>[
                              Positioned(
                                right: 0.0,
                                top: 0.0,
//                                child: new Icon((Icons.cancel)),
                              child: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: (){
                                  setState(() {
                                    selectedImage=null;
                                  });
                                },
                              ),
                              ),
                            ],
                          ),
                )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Align(alignment: Alignment.topLeft,child: new Text("About You",style: TextStyle(fontSize: 17),),),
                Container(
                  child: TextFormField(
                    controller: _aboutYou,
                    maxLines: 4,
                    validator: (value){
                      if(value.length<1 || value.length>255){
                        return "Name must be within 1 to 255 characters";
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
                  padding: EdgeInsets.only(bottom: 15.0),
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


