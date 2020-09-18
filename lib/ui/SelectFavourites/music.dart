import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  Color originalColor=Colors.grey[200];
  Color changedColor=Colors.blue;
  bool isJazz=false;
  bool isRock=false;
  bool isHipHop=false;
  bool isPop=false;
  bool isClassical=false;
  bool isFolk=false;
  bool isCountry=false;
  bool isElectronic=false;
  bool isHouse=false;
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
                  isJazz=isJazz==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Jazz"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isJazz==true)?changedColor:originalColor,
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
                  isRock=isRock==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Rock"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isRock==true)?changedColor:originalColor,
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
                  isHipHop=isHipHop==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Hip Hop"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isHipHop==true)?changedColor:originalColor,
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
                  isPop=isPop==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Pop"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isPop==true)?changedColor:originalColor,
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
                  isClassical=isClassical==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Classical"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isClassical==true)?changedColor:originalColor,
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
                  isElectronic=isElectronic==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Electronic"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isElectronic==true)?changedColor:originalColor,
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
                  isCountry=isCountry==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Country"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isCountry==true)?changedColor:originalColor,
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
                  isFolk=isFolk==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("Folk"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isFolk==true)?changedColor:originalColor,
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
                  isHouse=isHouse==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Container(
                    child: Text("House"),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isHouse==true)?changedColor:originalColor,
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
