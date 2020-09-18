import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_practice/ui/SelectFavourites/fashion.dart';
import 'package:ui_practice/ui/SelectFavourites/hobby.dart';
import 'package:ui_practice/ui/SelectFavourites/movie.dart';
import 'package:ui_practice/ui/SelectFavourites/music.dart';
import 'package:universal_html/html.dart' hide Text;

class PersonalInfoSelect extends StatefulWidget {
  @override
  PersonalInfoSelectState createState() => PersonalInfoSelectState();
}

class PersonalInfoSelectState extends State<PersonalInfoSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//        decoration: BoxDecoration(
//            gradient: LinearGradient(
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//                colors: [Colors.white,Colors.yellow[100]]
//            ),

//            borderRadius: BorderRadius.circular(40.0)
//        ),
        child: SingleChildScrollView(
          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text("Personal Information",style: TextStyle(fontSize: 22,color: Colors.orange,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text("Fashion, Style",style: TextStyle(fontSize: 17,color: Colors.orange,),),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text("Select Your Favourites",style: TextStyle(fontSize: 17,color: Colors.orange,),)
                  ],
                ),
              ),
//              Icon(MdiIcons.pen),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Align(
                alignment: Alignment.centerLeft,child:
              Text("  1. What kinds of music do you enjoy listening to?",style: TextStyle(color: Colors.blue),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Music(),
              Padding(
                padding: EdgeInsets.only(top: 14.0),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(top: 14.0),
              ),
              Align(
                alignment: Alignment.centerLeft,child:
              Text("  2. Which types of movies do you like?",style: TextStyle(color: Colors.blue),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Movie(),

              Padding(
                padding: EdgeInsets.only(top: 14.0),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(top: 14.0),
              ),
              Align(
                alignment: Alignment.centerLeft,child:
              Text("  3. What stye of fashion suits you the most?",style: TextStyle(color: Colors.blue),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              FashionStyle(),
              Padding(
                padding: EdgeInsets.only(top: 14.0),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(top: 14.0),
              ),
              Align(
                alignment: Alignment.centerLeft,child:
              Text("  4. What are your hobbies?",style: TextStyle(color: Colors.blue),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Hobby(),
            ],
          ),
        ),
      ),
    );
  }
}
