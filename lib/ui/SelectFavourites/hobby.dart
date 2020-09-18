import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Hobby extends StatefulWidget {
  @override
  _HobbyState createState() => _HobbyState();
}

class _HobbyState extends State<Hobby> {
  Color originalColor=Colors.grey[200];
  Color changedColor=Colors.blue;

  bool isActing=false;
  bool isBallSport=false;
  bool isComputerGames=false;
  bool isCooking=false;
  bool isDance=false;
  bool isGardening=false;
  bool isHunting=false;
  bool isPainting=false;
  bool isPhotography=false;
  bool isPlayingMusic=false;
  bool isPoetry=false;
  bool isReading=false;
  bool isShopping=false;
  bool isSinging=false;
  bool isSewing=false;
  bool isStrengthCombat=false;
  bool isTrackEdurance=false;
  bool isTravelling=false;
  bool isWaterSnow=false;
  bool isWriting=false;


  Color iconColor=Colors.blue;
  Color changedIconColor=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Wrap(
//        alignment: WrapAlignment.spaceBetween,
//        direction: Axis.vertical,
      direction: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isActing=isActing==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.dramaMasks,color: (isActing==true)?changedIconColor:iconColor,),
                  Text(" Acting"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isActing==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isBallSport=isBallSport==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.tennisBall,color: (isBallSport==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.football,color: (isBallSport==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.basketball,color: (isBallSport==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.volleyball,color: (isBallSport==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.tennis,color: (isBallSport==true)?changedIconColor:iconColor,),
//                  Icon(MdiIcons.basketball,color: Colors.blue,),
//                  Icon(MdiIcons.volleyball,color: Colors.blue,),
                  Text(" Ball Sports"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isBallSport==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isComputerGames=isComputerGames==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(Icons.computer,color: (isComputerGames==true)?changedIconColor:iconColor,),
                  Text(" Computer Games"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isComputerGames==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isCooking=isCooking==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.chefHat,color: (isCooking==true)?changedIconColor:iconColor,),
                  Text(" Cooking"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isCooking==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isDance=isDance==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.yoga,color: (isDance==true)?changedIconColor:iconColor,),
                  Text(" Dance"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isDance==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isGardening=isGardening==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.flower,color: (isGardening==true)?changedIconColor:iconColor,),
//                  Icon(MdiIcons.waterOutline,color: (isGardening==true)?changedIconColor:iconColor,),
                  Text(" Gardening"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isGardening==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isHunting=isHunting==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.pinterest,color: (isHunting==true)?changedIconColor:iconColor,),
                  Text(" Hunting"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isHunting==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isPainting=isPainting==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.brush,color: (isPainting==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.palette,color: (isPainting==true)?changedIconColor:iconColor,),
                  Text(" Painting"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isPainting==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isPhotography=isPhotography==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.camera,color: (isPhotography==true)?changedIconColor:iconColor,),
                  Text(" Photography"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isPhotography==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isPlayingMusic=isPlayingMusic==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.music,color: (isPlayingMusic==true)?changedIconColor:iconColor,),
                  Text(" Playing Music"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isPlayingMusic==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isPoetry=isPoetry==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.bookOpen,color: (isPoetry==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.borderColor,color: (isPoetry==true)?changedIconColor:iconColor,),
                  Text(" Poetry"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isPoetry==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isReading=isReading==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(Icons.local_library,color: (isReading==true)?changedIconColor:iconColor,),
                  Text(" Reading"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isReading==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isSewing=isSewing==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.pin,color: (isSewing==true)?changedIconColor:iconColor,),
                  Text(" Sewing"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isSewing==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isShopping=isShopping==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(Icons.shopping_cart,color: (isShopping==true)?changedIconColor:iconColor,),
                  Text(" Shopping"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isShopping==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isSinging=isSinging==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(Icons.music_note,color: (isSinging==true)?changedIconColor:iconColor,),
                  Text(" Singing"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isSinging==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isStrengthCombat=isStrengthCombat==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.karate,color: (isStrengthCombat==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.weightLifter,color: (isStrengthCombat==true)?changedIconColor:iconColor,),
                  Text(" Strength and Combat Sports"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isStrengthCombat==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isTrackEdurance=isTrackEdurance==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.run,color: (isTrackEdurance==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.hiking,color: (isTrackEdurance==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.bike,color: (isTrackEdurance==true)?changedIconColor:iconColor,),
                  Text(" Track and Edurance Sports"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isTrackEdurance==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isTravelling=isTravelling==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.airport,color: (isTravelling==true)?changedIconColor:iconColor,),
                  Text(" Travelling"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isTravelling==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isWaterSnow=isWaterSnow==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.swim,color: (isWaterSnow==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.snowboard,color: (isWaterSnow==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.skate,color: (isWaterSnow==true)?changedIconColor:iconColor,),
                  Text(" Water and Snow Sports"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isWaterSnow==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isWriting=isWriting==false?true:false;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Wrap(
                children: <Widget>[
                  Icon(MdiIcons.bookOpen,color: (isWriting==true)?changedIconColor:iconColor,),
                  Icon(MdiIcons.pencil,color: (isWriting==true)?changedIconColor:iconColor,),
                  Text(" Writing"),
                ],
              )
              ,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: (isWriting==true)?changedColor:originalColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),

        ],
      ),
    );
  }
}
