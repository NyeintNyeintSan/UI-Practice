import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FashionStyle extends StatefulWidget {
  @override
  _FashionStyleState createState() => _FashionStyleState();
}

class _FashionStyleState extends State<FashionStyle> {
  Color originalColor=Colors.grey[200];
  Color changedColor=Colors.blue;

  bool isArtsy=false;
  bool isBohemiao=false;
  bool isCasual=false;
  bool isChic=false;
  bool isPreppy=false;
  bool isRocker=false;
  bool isSexy=false;
  bool isSophisicated=false;
  bool isTomboy=false;
  bool isTraditional=false;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Wrap(
//        alignment: WrapAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: <Widget>[
//          Padding(
//            padding: EdgeInsets.only(left: 5.0),
//          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isArtsy=isArtsy==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Artsy"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isArtsy==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isArtsy==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/artsy1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
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
                  isBohemiao=isBohemiao==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Bohemian"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isBohemiao==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isBohemiao==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/bohemian1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
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
                  isCasual=isCasual==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Casual"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isCasual==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isCasual==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/casual1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.0),
          ),
          GestureDetector(
              onTap: (){
                setState(() {
                  isChic=isChic==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Chic"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isChic==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isChic==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/chic2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
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
                  isPreppy=isPreppy==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Preepy"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isPreppy==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isPreppy==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/preepy1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
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
                  isRocker=isRocker==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Rocker"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isRocker==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isRocker==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/rocker1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
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
                  isSexy=isSexy==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Sexy"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isSexy==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isSexy==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/sexy1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
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
                  isSophisicated=isSophisicated==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Sophisicated"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isSophisicated==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isSophisicated==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/sophisicated1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
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
                  isTomboy=isTomboy==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Tomboy"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isTomboy==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isTomboy==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/tomboy2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
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
                  isTraditional=isTraditional==false?true:false;
                });
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text("Traditional"),
                  Container(
                    width: 120,
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (isTraditional==true)?changedColor:originalColor,
//                                  color: changedColor,
                      borderRadius: BorderRadius.circular(20.0),
//                      border: new Border.all(color: Colors.red,width: 200),
                      image: DecorationImage(
                        colorFilter: (isTraditional==true)?new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop):null,
                        image: AssetImage("assets/images/traditional.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
//                    child:  Text("Action"),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),

        ],
      ),
    );
  }
}
