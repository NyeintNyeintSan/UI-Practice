import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/ui/detail_profile.dart';

class OutcomeMatch extends StatefulWidget {
  @override
  _OutcomeMatchState createState() => _OutcomeMatchState();
}

class _OutcomeMatchState extends State<OutcomeMatch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailProfile())
            );
          },
          child: Container(
              height: 120.0,
              margin: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.0,
              ),
              child: new Stack(
                children: <Widget>[
                  Container(
                      height:124,
                      width: 240,
                      margin:const EdgeInsets.only(left:46.0) ,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.grey,Colors.yellow]
                        ),
//                color: new Color(0xFF333366),
//              color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(8.0),
//                boxShadow: <BoxShadow>[
//                  new BoxShadow(
//                    color: Colors.red,
//                    offset: Offset(0.3,10.0),
//                    blurRadius: 10.5
//
//                  )
//                ]
                      ),

                      child: Container(
//                  padding: EdgeInsets.only(left: 10.0),
                        child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
//                      padding: EdgeInsets.only(left: 190.0),
                              padding: EdgeInsets.fromLTRB(190.0, 10, 0, 0),
                              child: Icon(Icons.more_vert,color: Colors.indigo,),
                            ),

                            Text("Xiao Zhan",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
//                    Text("Age 32",style: TextStyle(color: Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.calendar_today,size: 20,color: Colors.pink,),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                ),
                                Text("32 yrs,1988 born",style: TextStyle(color: Colors.white))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.home,color: Colors.orange,),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                ),
                                Text("Monywa, Sagaing",style: TextStyle(color: Colors.white))
                              ],
                            )
                          ],
                        ),
                      )
                  ),

                  Container(
                    margin: new EdgeInsets.symmetric(
                        vertical: 16.0
                    ),
                    width: 92.0,
                    height: 92.0,
                    alignment: FractionalOffset.centerLeft,
                    decoration: BoxDecoration(
                      image:DecorationImage(image: AssetImage('assets/images/xiaozhan.jpg'),
                        fit: BoxFit.cover,),
                      borderRadius: new BorderRadius.all(new Radius.circular(150.0)),
                      border: Border.all( color: Colors.white12,width: 3),
//                           border: new Border.all(color: Colors.red,width: 200)
                    ),
                  )
                ],
              )
          ),
        ),
        Container(
            height: 120.0,
            margin: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 24.0,
            ),
            child: new Stack(
              children: <Widget>[
                Container(
                    height:124,
                    width: 240,
                    margin:const EdgeInsets.only(left:46.0) ,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.grey,Colors.blue]
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
//                      padding: EdgeInsets.only(left: 190.0),
                            padding: EdgeInsets.fromLTRB(190.0, 10, 0, 0),
                            child: Icon(Icons.more_vert,color: Colors.indigo,),
                          ),
                          Text("Wang Yibo",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
//                    Text("Age 32",style: TextStyle(color: Colors.white)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.calendar_today,size: 20,color: Colors.pink,),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                              ),
                              Text("23 yrs,1997 born",style: TextStyle(color: Colors.white))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.home,color: Colors.orange,),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                              ),
                              Text("AungPan, Taunggyi",style: TextStyle(color: Colors.white))
                            ],
                          )
                        ],
                      ),
                    )
                ),

                Container(
                  margin: new EdgeInsets.symmetric(
                      vertical: 16.0
                  ),
                  width: 92.0,
                  height: 92.0,
                  alignment: FractionalOffset.centerLeft,
                  decoration: BoxDecoration(
                    image:DecorationImage(image: AssetImage('assets/images/wang yibo.jpg'),
                      fit: BoxFit.cover,),
                    borderRadius: new BorderRadius.all(new Radius.circular(150.0)),
                    border: Border.all( color: Colors.white12,width: 3),
//                           border: new Border.all(color: Colors.red,width: 200)
                  ),
                )
              ],
            )
        ),

        Container(
            height: 120.0,
            margin: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 24.0,
            ),
            child: new Stack(
              children: <Widget>[
                Container(
                    height:124,
                    width: 240,
                    margin:const EdgeInsets.only(left:46.0) ,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.grey,Colors.greenAccent]
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
//                      padding: EdgeInsets.only(left: 190.0),
                            padding: EdgeInsets.fromLTRB(190.0, 10, 0, 0),
                            child: Icon(Icons.more_vert,color: Colors.indigo,),
                          ),
                          Text("Demo",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
//                    Text("Age 32",style: TextStyle(color: Colors.white)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.calendar_today,size: 20,color: Colors.pink,),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                              ),
                              Text("18 yrs,2002 born",style: TextStyle(color: Colors.white))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.home,color: Colors.orange,),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                              ),
                              Text("MuDon, Mon",style: TextStyle(color: Colors.white))
                            ],
                          )
                        ],
                      ),
                    )
                ),

                Container(
                  margin: new EdgeInsets.symmetric(
                      vertical: 16.0
                  ),
                  width: 92.0,
                  height: 92.0,
                  alignment: FractionalOffset.centerLeft,
                  decoration: BoxDecoration(
                    image:DecorationImage(image: AssetImage('assets/images/demo.jpeg'),
                      fit: BoxFit.cover,),
                    borderRadius: new BorderRadius.all(new Radius.circular(150.0)),
                    border: Border.all( color: Colors.white12,width: 3),
//                           border: new Border.all(color: Colors.red,width: 200)
                  ),
                )
              ],
            )
        ),

        Row(
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage('assets/images/jin ling.jpg'),width: 150,height: 150,),
                  Text("Jin Ling"),
                  Text("20, Mandalay"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage('assets/images/demo.jpeg'),width: 150,height: 150,),
                  Text("Demo"),
                  Text("18, Shan"),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage('assets/images/si zhui.jpg'),width: 150,height: 150,),
                  Text("Si Zhui"),
                  Text("17, Mon"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage('assets/images/wu bai.jpg'),width: 150,height: 150,),
                  Text("Wu Bai"),
                  Text("25, Kachin"),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage('assets/images/lishan.jpeg'),width: 150,height: 150,),
                  Text("Li Shan"),
                  Text("35, Magway"),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
