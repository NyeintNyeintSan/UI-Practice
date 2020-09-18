import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PersonalInfoWriteDown extends StatefulWidget {
  @override
  _PersonalInfoWriteDownState createState() => _PersonalInfoWriteDownState();
}

class _PersonalInfoWriteDownState extends State<PersonalInfoWriteDown> {

  final TextEditingController _nameController = TextEditingController();
  Color originalColor=Colors.grey[200];
//  Color changedColor=Colors.green;
  Color selectedColor=Colors.white;
  Color unselectedColorUp=Colors.orange;
  Color unselectedColorDown=Colors.red;

  Color color=Colors.white;
  Color textColor=Colors.black54;
  Color titleColor=Colors.black;

  bool yesSmoking=false;
  bool noSmoking=false;
  bool yesDrink=false;
  bool noDrink=false;
  bool head=false;
  bool heart=false;
  bool yesLove=false;
  bool noLove=false;

  int selectSmoke;
  @override
  void initState(){
    super.initState();
    selectSmoke=0;
  }

  setSelectedSmoke(int val){
    setState(() {
      selectSmoke=val;
    });
  }
  void dispose(){
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
//        decoration: BoxDecoration(
//            gradient: LinearGradient(
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//                colors: [Colors.white,Colors.amber[200]]
//            ),
//        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text("Personal Information",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text("Top 3 Favourites",style: TextStyle(fontSize: 17,color:Colors.black,),)
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Container(
//                width: MediaQuery. of(context). size. width*0.93,
                child: Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[

                    Container(
                      width: MediaQuery. of(context). size. width*0.75,
                      child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Center(
//                                  child: (MdiIcons.dramaMasks),
                              child: Icon(MdiIcons.dramaMasks,color: Colors.orange,size: 60,),
                            ),
                            Center(
                              child: Text("Actors",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
                            ),

//                            Row(
////                                direction: Axis.horizontal,
//                              children: <Widget>[
//                                Container(
//                                  padding: EdgeInsets.only(left: 10),
//                                  child: Text("1.",style: TextStyle(color: textColor),
//                                  ),
//                                ),
//                                Padding(padding: EdgeInsets.only(left: 20),),
//                                Flexible(
//                                  child: Text("Actors",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: textColor),),
//                                ),
//                              ],
//                            ),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            Padding(padding: EdgeInsets.only(top: 30),),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),),
                    Container(
                      width: MediaQuery. of(context). size. width*0.75,
                      child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Center(
//                                  child: (MdiIcons.dramaMasks),
                              child: Icon(MdiIcons.movie,color: Colors.blue,size: 60,),
                            ),
                            Center(
                              child: Text("Movies",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
                            ),
//                            Row(
////                                direction: Axis.horizontal,
//                              children: <Widget>[
//                                Container(
//                                  padding: EdgeInsets.only(left: 10),
//                                  child: Text("2.",style: TextStyle(color: textColor),
//                                  ),
//                                ),
//                                Padding(padding: EdgeInsets.only(left: 20),),
//                                Flexible(
//                                  child: Text("Movies",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
//                                ),
//                              ],
//                            ),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            Padding(padding: EdgeInsets.only(top: 30),),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),),
                    Container(
                      width: MediaQuery. of(context). size. width*0.75,
                      child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Center(
//                                  child: (MdiIcons.dramaMasks),
                              child: Icon(MdiIcons.microphoneVariant,color: Colors.purple,size: 60,),
                            ),
                            Center(
                              child: Text("Singers",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
                            ),
//                            Row(
////                                direction: Axis.horizontal,
//                              children: <Widget>[
//                                Container(
//                                  padding: EdgeInsets.only(left: 10),
//                                  child: Text("3.",style: TextStyle(color: textColor),
//                                  ),
//                                ),
//                                Padding(padding: EdgeInsets.only(left: 20),),
//                                Flexible(
//                                  child: Text("Singers",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
//                                ),
//                              ],
//                            ),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            Padding(padding: EdgeInsets.only(top: 30),),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),),
                    Container(
                      width: MediaQuery. of(context). size. width*0.75,
                      child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Center(
//                                  child: (MdiIcons.dramaMasks),
                              child: Icon(MdiIcons.musicNote,color: Colors.green,size: 60,),
                            ),
                            Center(
                              child: Text("Songs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
                            ),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            Padding(padding: EdgeInsets.only(top: 30),),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),),
                    Container(
                      width: MediaQuery. of(context). size. width*0.75,
                      child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Center(
//                                  child: (MdiIcons.dramaMasks),
                              child: Icon(MdiIcons.paw,color: Colors.amber,size: 60,),
                            ),
                            Center(
                              child: Text("Animals",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
                            ),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            Padding(padding: EdgeInsets.only(top: 30),),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),),
                    Container(
                      width: MediaQuery. of(context). size. width*0.75,
                      child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Center(
//                                  child: (MdiIcons.dramaMasks),
                              child: Icon(MdiIcons.book,color: Colors.blue,size: 60,),
                            ),
                            Center(
                              child: Text("Book Authors",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
                            ),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            Padding(padding: EdgeInsets.only(top: 30),),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),),
                    Container(
                      width: MediaQuery. of(context). size. width*0.75,
                      child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Center(
//                                  child: (MdiIcons.dramaMasks),
                              child: Icon(MdiIcons.bookMultiple,color: Colors.green,size: 60,),
                            ),
                            Center(
                              child: Text("Book Titles",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
                            ),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            Padding(padding: EdgeInsets.only(top: 30),),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),),
                    Container(
                      width: MediaQuery. of(context). size. width*0.75,
                      child: Card(
                        color: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 15),),
                            Center(
//                                  child: (MdiIcons.dramaMasks),
                              child: Icon(MdiIcons.earth,color: Colors.blue,size: 60,),
                            ),
                            Center(
                              child: Text("Places to travel in the world",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: titleColor),),
                            ),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            TextForm(_nameController),
                            Padding(padding: EdgeInsets.only(top: 30),),
                          ],
                        ),
                      ),
                    ),

                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
  TextForm(TextEditingController _controller){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
//                            crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(MdiIcons.pen,
                              color: textColor,
        ),
        Container(
          width: MediaQuery. of(context). size. width*0.4,
          child: TextFormField(
            controller: _controller,
            maxLines: 1,
            validator: (value){
              if(value.length<1 || value.length>255){
                return "Name must be within 1 to 255 characters";
              }
              return null;
            },
            decoration: InputDecoration(
              enabledBorder: new UnderlineInputBorder(
                borderSide: BorderSide(
                                        color: textColor
                ),
              ),
//                                  prefixIcon: Icon(MdiIcons.pen,color: Colors.blue,)
            ),
          ),
        ),
      ],
    );
  }
}
