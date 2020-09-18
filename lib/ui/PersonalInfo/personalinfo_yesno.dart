import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PersonalInfoYesNo extends StatefulWidget {
  @override
  _PersonalInfoYesNoState createState() => _PersonalInfoYesNoState();
}

class _PersonalInfoYesNoState extends State<PersonalInfoYesNo> {
  Color originalColor=Colors.grey[200];
  Color changedColor=Colors.amber;
  Color selectedColor=Colors.white;
  Color unselectedColorUp=Colors.orange;
  Color unselectedColorDown=Colors.red;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text("Personal Information",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text("Choose Ones",style: TextStyle(fontSize: 17,color: Colors.white,),)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Container(
                width: MediaQuery. of(context). size. width*0.93,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                          Container(
//                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 7),
                              child:
                              Wrap(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                                    child: Text("1."
//                                        ,style: TextStyle(color: Colors.blue)
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20,20,0,0),
                                    child: Text("I "),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 7),
                                    child:  Column(
//                                      mainAxisAlignment: MainAxisAlignment.center,
//                                    crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                yesSmoking=yesSmoking==false?true:false;
                                                if(noSmoking==true){
                                                  noSmoking=false;
                                                }
                                              });
                                            },
                                            child: Column(
                                              children: <Widget>[
//                                                Padding(padding: EdgeInsets.only(top: 5),),
                                                Container(
                                                  child: Text("like",
                                                    style: TextStyle(color: (yesSmoking==true)?selectedColor:unselectedColorUp,),),
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
//                                           color: Colors.grey[200],
                                                    color: (yesSmoking==true)?changedColor:originalColor,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                if(noSmoking==false){
                                                  noSmoking=true;
                                                  if(yesSmoking==true){
                                                    yesSmoking=false;
                                                  }
                                                }
                                                else {
                                                  noSmoking=false;
                                                }
                                              });
                                            },
                                            child: Column(
                                              children: <Widget>[
//                                                Padding(padding: EdgeInsets.only(top: 5),),
                                                Container(
                                                  child: Text("don't like",
                                                    style: TextStyle(color: (noSmoking==true)?selectedColor:unselectedColorDown,),),
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
//                                           color: Colors.grey[200],
                                                    color: (noSmoking==true)?changedColor:originalColor,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                                    child: Text("smoking."),
                                  )
                                ],
                              )
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                          Container(
                              padding: EdgeInsets.only(left: 7),
                              child:
                              Wrap(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                                    child: Text("2."
//                                        ,style: TextStyle(color: Colors.blue)
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20,20,0,0),
                                    child: Text("I "),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 7),
                                    child:  Column(
                                      children: <Widget>[
                                        GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                yesDrink=yesDrink==false?true:false;
                                                if(noDrink==true){
                                                  noDrink=false;
                                                }
                                              });
                                            },
                                            child: Column(
                                              children: <Widget>[
                                                Padding(padding: EdgeInsets.only(top: 5),),
                                                Container(
                                                  child: Text("drink",
                                                    style: TextStyle(color: (yesDrink==true)?selectedColor:unselectedColorUp,),),
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
//                                           color: Colors.grey[200],
                                                    color: (yesDrink==true)?changedColor:originalColor,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                if(noDrink==false){
                                                  noDrink=true;
                                                  if(yesDrink==true){
                                                    yesDrink=false;
                                                  }
                                                }
                                                else {
                                                  noDrink=false;
                                                }
                                              });
                                            },
                                            child: Column(
                                              children: <Widget>[
                                                Padding(padding: EdgeInsets.only(top: 5),),
                                                Container(
                                                  child: Text("don't drink",
                                                    style: TextStyle(color: (noDrink==true)?selectedColor:unselectedColorDown,),),
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
//                                           color: Colors.grey[200],
                                                    color: (noDrink==true)?changedColor:originalColor,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                                    child: Text(" alcohol."),
                                  )
                                ],
                              )
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                          Container(
                              padding: EdgeInsets.only(left: 7),
                              child:
                              Wrap(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                                    child: Text("3."
//                                        ,style: TextStyle(color: Colors.blue)
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20,20,0,0),
                                    child: Text("In matters of love, I will follow my "),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 7),
                                    child:  Column(
                                      children: <Widget>[
                                        GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                head=head==false?true:false;
                                                if(heart==true){
                                                  heart=false;
                                                }
                                              });
                                            },
                                            child: Column(
                                              children: <Widget>[
//                                                Padding(padding: EdgeInsets.only(top: 5),),
                                                Container(
                                                  child: Text("head",
                                                    style: TextStyle(color: (head==true)?selectedColor:unselectedColorUp,),),
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
//                                           color: Colors.grey[200],
                                                    color: (head==true)?changedColor:originalColor,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                heart=heart==false?true:false;
                                                if(head==true){
                                                  head=false;
                                                }
                                              });
                                            },
                                            child: Column(
                                              children: <Widget>[
                                                Padding(padding: EdgeInsets.only(top: 5),),
                                                Container(
                                                  child: Text("heart",
                                                    style: TextStyle(color: (heart==true)?selectedColor:unselectedColorDown,),),
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
//                                           color: Colors.grey[200],
                                                    color: (heart==true)?changedColor:originalColor,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                                    child: Text("."),
                                  )
                                ],
                              )
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                          Container(
                              padding: EdgeInsets.only(left: 7),
                              child:
                              Wrap(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                                    child: Text("4."
//                                        ,style: TextStyle(color: Colors.blue)
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(20,20,0,0),
                                    child: Text("I "),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 7),
                                    child:  Column(
                                      children: <Widget>[
                                        GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                yesLove=yesLove==false?true:false;
                                                if(noLove==true){
                                                  noLove=false;
                                                }
                                              });
                                            },
                                            child: Column(
                                              children: <Widget>[
//                                                Padding(padding: EdgeInsets.only(top: 5),),
                                                Container(
                                                  child: Text("love",
                                                    style: TextStyle(color: (yesLove==true)?selectedColor:unselectedColorUp,),),
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
//                                           color: Colors.grey[200],
                                                    color: (yesLove==true)?changedColor:originalColor,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                noLove=noLove==false?true:false;
                                                if(yesLove==true){
                                                  yesLove=false;
                                                }
                                              });
                                            },
                                            child: Column(
                                              children: <Widget>[
                                                Padding(padding: EdgeInsets.only(top: 5),),
                                                Container(
                                                  child: Text("don't love",
                                                    style: TextStyle(color: (noLove==true)?selectedColor:unselectedColorDown,),),
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
//                                           color: Colors.grey[200],
                                                    color: (noLove==true)?changedColor:originalColor,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                                    child: Text("to spend my time with little kids."),
                                  )
                                ],
                              )
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: 45.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.lightGreenAccent,Colors.lightBlueAccent]
                            ),

                            borderRadius: BorderRadius.circular(40.0)
                        ),
                        child: Center(child: Text("DONE"),),
//            child: Text("LOGIN"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
