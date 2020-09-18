import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  Color originalColor=Colors.grey[200];
  Color changedColor=Colors.blue;

  bool isAction=false;
  bool isComedies=false;
  bool isRomantic=false;
  bool isAdventure=false;
  bool isDramas=false;
  bool isRealLife=false;
  bool isWar=false;
  bool isHorror=false;
  bool isScienceFiction=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Wrap(
//        alignment: WrapAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              setState(() {
                isAction=isAction==false?true:false;
              });
            },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Action"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isAction==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isComedies=isComedies==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Comedies"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isComedies==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isRealLife=isRealLife==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Real Life"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isRealLife==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isRomantic=isRomantic==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Romantic"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isRomantic==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isAdventure=isAdventure==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Adventure"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isAdventure==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isDramas=isDramas==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Dramas"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isDramas==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isWar=isWar==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("War"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isWar==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isHorror=isHorror==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Horror"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isHorror==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isScienceFiction=isScienceFiction==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Science Fiction"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isScienceFiction==true)?changedColor:originalColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}
