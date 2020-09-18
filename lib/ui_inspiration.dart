import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ui_practice/main.dart';
import 'package:ui_practice/ui_inspiration_next.dart';

class UiInspiration extends StatefulWidget {
  @override
  _UiInspirationState createState() => _UiInspirationState();
}

class _UiInspirationState extends State<UiInspiration>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.red,
            expandedHeight: 130.0,
            flexibleSpace: FlexibleSpaceBar(
//            title: Text("Hello"),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Hello"),
                Text("Asbi Bian Utoma",style: TextStyle(fontSize: 11),),
              ],
            ),
            ),
          leading: Icon(Icons.cloud_circle,),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart,color: Colors.white,),
              ),
              IconButton(
                icon: Icon(Icons.menu,color: Colors.white,),
              )
            ],
          ),
          SliverFillRemaining(
            child: new Container(
              child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(17),
                      ),
                      Column(
                        children: <Widget>[
                          Card(
                            child: Icon(Icons.book,color: Colors.red,size: 40,),
                          ),
                          Text("Book")
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(17)
                      ),
                      Column(
                        children: <Widget>[
                          Card(
                            child: Icon(Icons.message,color: Colors.red,size: 40,),
                          ),
                          Text("Message")
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.all(17)
                      ),
                      Column(
                        children: <Widget>[
                          Card(
                            child: Icon(Icons.satellite,color: Colors.red,size: 40,),
                          ),
                          Text("Satellite")
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(17),
                      ),
                      Column(
                        children: <Widget>[
                          Card(
                            child: Icon(Icons.perm_media,color: Colors.red,size: 40,),
                          ),
                          Text("Photo")
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.all(17)
                      ),
                      Column(
                        children: <Widget>[
                          Card(
                            child: Icon(Icons.hourglass_empty,color: Colors.red,size: 40,),
                          ),
                          Text("Time")
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.all(17)
                      ),
                      Column(
                        children: <Widget>[
                          Card(
                            child: Icon(Icons.directions_car,color: Colors.red,size: 40,),
                          ),
                          Text("Transportation")
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text("Bacaan Terlaris",style: TextStyle(fontWeight: FontWeight.bold),),
                      Container(
//                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                        Column(
                        children: <Widget>[
                        Card(
                          child: new InkWell(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => UiInspirationNext())
                              );
                            },
                            child: Icon(Icons.book,color: Colors.red,size: 100,),
                          ),
//                        child: Icon(Icons.book,color: Colors.red,size: 100,),
                      ),
                      Text("2000 Kyats")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        child: Icon(Icons.book,color: Colors.red,size: 100,),
                      ),
                      Text("1000 Kyats")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        child: Icon(Icons.book,color: Colors.red,size: 100,),
                      ),
                      Text("1000 Kyats")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        child: Icon(Icons.book,color: Colors.red,size: 100,),
                      ),
                      Text("1000 Kyats")
                    ],)
                          ],
                        ),
                      ),
                    ],
                  ),
                )


                ],
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_alt),
            title: Text("Saved"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              title: Text("Payment")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notification"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Me")
          )
        ],
      ),

    );
  }
}
