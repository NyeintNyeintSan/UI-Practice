import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:io';

import 'package:ui_practice/ui/CreateAccount/registration_two.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_select.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_writedown.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_yesno.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File selectedImage;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  int _radioValue=0;


 final TextEditingController _nameController = TextEditingController(text: 'Xiao Zhan');
 final TextEditingController _dobController = TextEditingController(
      text: new DateTime.now().toString());
  final TextEditingController _addressController = TextEditingController(text:'Monywa, Sagaing');
  final TextEditingController _occupationController = TextEditingController(text:'Doctor');
  final TextEditingController _heightController = TextEditingController(text:"6' 2\"");
  final TextEditingController _weightController = TextEditingController(text:'132 lb');
  String _selectedSkinColor="Fair";
  String _selectedMaritalStatus="Single";
  final TextEditingController _maritalStatus=TextEditingController(text:'');
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _occupationController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _maritalStatus.dispose();
    super.dispose();
  }

  void changeRadio(value){
    setState(() {
      _radioValue=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text("Edit Profile",style: TextStyle(color: Colors.black),),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Container(
                  width: 120,
                  height: 120,
                  child:Stack(
                    children: <Widget>[
                      Container(
//                          child: Icon(Icons.person,size: 90,color: Colors.white,),
                          height:120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/xiaozhan.jpg'),
                              fit: BoxFit.fill,
                            ),
                            color: Colors.blue[100],
                            shape: BoxShape.circle,
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
//                  decoration: BoxDecoration(
//                    borderRadius: new BorderRadius.all(new Radius.circular(150.0)),
//                    border: Border.all( color: Colors.white12,width: 3),
//                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(MdiIcons.alphaN,color: Colors.blue[300],),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Name",style: TextStyle(color: Colors.grey),),
//                        Text("10.10.1986",style: TextStyle(fontSize: 16),),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.0,
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
                              hintStyle: TextStyle(color: Colors.black),

                              labelStyle: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(MdiIcons.cakeVariant,color: Colors.pink[300],),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Birthday",style: TextStyle(color: Colors.grey),),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.0,
                          child: FormBuilder(
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
                              onChanged: (value){
                                _dobController.text = value.toString();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(Icons.person,color: Colors.blue[300],),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Gender",style: TextStyle(color: Colors.grey),),
//                        Text("10.10.1986",style: TextStyle(fontSize: 16),),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(value: 0, groupValue: _radioValue,
                                        onChanged: (value){
                                          changeRadio(value);
                                        }),
                                    Text("Male"),
                                    Radio(value: 1, groupValue: _radioValue,
                                        onChanged: (value){
                                          changeRadio(value);
                                        }),
                                    Text("Female")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(Icons.home,color: Colors.deepPurple,),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Address",style: TextStyle(color: Colors.grey),),
//                        Text("10.10.1986",style: TextStyle(fontSize: 16),),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.0,
                          child: TextFormField(
                            controller: _addressController,
                            maxLines: 1,
                            validator: (value){
                              if(value.length<1 || value.length>255){
                                return "Name must be within 1 to 255 characters";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),

                              labelStyle: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(Icons.business_center,color: Colors.green,),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Occupation",style: TextStyle(color: Colors.grey),),
//                        Text("10.10.1986",style: TextStyle(fontSize: 16),),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.0,
                          child: TextFormField(
                            controller: _occupationController,
                            maxLines: 1,
                            validator: (value){
                              if(value.length<1 || value.length>255){
                                return "Name must be within 1 to 255 characters";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),

                              labelStyle: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(Icons.vertical_align_top,color: Colors.orangeAccent,),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Height",style: TextStyle(color: Colors.grey),),
//                        Text("10.10.1986",style: TextStyle(fontSize: 16),),
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
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(Icons.accessibility,color: Colors.pink,),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Weight",style: TextStyle(color: Colors.grey),),
//                        Text("10.10.1986",style: TextStyle(fontSize: 16),),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.0,
                          child: TextFormField(
                            controller: _weightController,
                            maxLines: 1,
                            validator: (value){
                              if(value.length<1 || value.length>255){
                                return "Name must be within 1 to 255 characters";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),

                              labelStyle: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(MdiIcons.googleStreetView,color: Colors.lightBlueAccent,),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Skin Color",style: TextStyle(color: Colors.grey),),
//
                        Container(
                          width: MediaQuery.of(context).size.width / 2.0,
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
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:10),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all( color: Colors.black12)),
                      child: Icon(Icons.favorite,color: Colors.red,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 25.0),
                        ),
                        Text("Marital Status",style: TextStyle(color: Colors.grey),),

                        Container(
                          width: MediaQuery.of(context).size.width / 2.0,
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
                      ],
                    ),
                  ],
                ),
//                Padding(
//                  padding: EdgeInsets.only(top:15),
//                ),
//                Divider(),
//                Padding(
//                  padding: EdgeInsets.only(top:10),
//                ),

                Padding(
                  padding: EdgeInsets.only(top:30),
                ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text("Personal Information",style: TextStyle(fontSize: 16,color: Colors.orange),),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
              ),
              Container(
                child:
                Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>PersonalInfoSelect()),
                        );
                      },
                      child: Container(
                        width:120,
                        height:100,
                        child: Card(
                          child:Column(
//                        crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(MdiIcons.googleStreetView,size: 40,color:Colors.blue),
                              Padding(
                                padding: EdgeInsets.only(top: 7.0),
                              ),
                              Text(
                                  "Fashion, Style"
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>PersonalInfoYesNo()),
                        );
                      },
                      child: Container(
                        width:120,
                        height:100,
                        child: Card(
                          child:Column(
//                        crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
//                            Icon(MdiIcons.healt,size: 40,color:Colors.blue),
                              Image(image: AssetImage('assets/images/lifestyle.png'),width: 50,height: 40,color: Colors.green,),

                              Padding(
                                padding: EdgeInsets.only(top: 7.0),
                              ),
                              Text(
                                  "Life Style"
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>PersonalInfoWriteDown()),
                        );
                      },
                      child: Container(
                        width:120,
                        height:100,
                        child: Card(
                          child:Column(
//                        crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(MdiIcons.heart,size: 40,color:Colors.pink[200]),
                              Padding(
                                padding: EdgeInsets.only(top: 7.0),
                              ),
                              Text(
                                  "Favourites"
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top:30),
                ),
                GestureDetector(
                  onTap: (){
//                    Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => PersonalInfoSelect())
//                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 45.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.amber,Colors.lightBlueAccent]
                        ),

                        borderRadius: BorderRadius.circular(40.0)
                    ),
                    child: Center(child: Text("Update"),),
//            child: Text("LOGIN"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:25),
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


