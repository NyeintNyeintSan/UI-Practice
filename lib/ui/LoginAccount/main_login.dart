
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_practice/ui/LoginAccount/search_page.dart';
import 'package:ui_practice/ui/detail_profile.dart';
import 'package:ui_practice/ui/update_account.dart';

class MainLogin extends StatefulWidget {
//  const AccountPage({Key key}) : super(key: key);
  @override
  _MainLoginState createState() => _MainLoginState();
}

class _MainLoginState extends State<MainLogin> with SingleTickerProviderStateMixin {


  TabController _tabController;

//  final List<Tab> myTabs = <Tab>[
//    Tab(icon: Icon(Icons.search)),
//    Tab(icon: Icon(Icons.favorite_border, color: Colors.red,)),
//    Tab(icon: Icon(Icons.directions_bike)),
//  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
//      DefaultTabController(
//      length: 3,
      Scaffold(
          drawer: Container(
            width: 250,
            child: Drawer(
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        color: Colors.lightBlueAccent,
                        child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 130.0, left: 10),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
//                           image:Image(image: AssetImage('assets/images/xiaozhan.jpg'),)
                                image: DecorationImage(image: AssetImage(
                                    'assets/images/xiaozhan.jpg'),
                                  fit: BoxFit.cover,),
                                borderRadius: new BorderRadius.all(new Radius
                                    .circular(150.0)),
//                           border: new Border.all(color: Colors.red,width: 200)
                              ),
//                         child: Text("Hello"),
//                       child: Image(image: AssetImage('assets/images/xiaozhen'),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 70.0, left: 10.0),
                            ),
                            Text("XiaoZhan")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => UpdateAccount())
                          );
                        },
                        child: Container(
                          child: Row(
                            children: <Widget>[
//                             Padding(
//                               padding: EdgeInsets.only(left: 20.0),
//                             ),
                              Icon(Icons.person),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                              ),
                              Text("Profile")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                            ),
                            Icon(Icons.settings),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                            ),
                            Text("Setting")
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey,),
                      Padding(
                        padding: EdgeInsets.only(top: 13.0),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                            ),
                            Icon(Icons.feedback),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                            ),
                            Text("Feedback")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                            ),
                            Icon(Icons.exit_to_app),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                            ),
                            Text("Log Out")
                          ],
                        ),
                      ),

//                 Container(
//                   color: Colors.blue,
//                   child: Row(
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.only(left: 20.0),
//                       ),
//                       Icon(Icons.exit_to_app),
//                       Padding(
//                         padding: EdgeInsets.only(left: 20.0),
//                       ),
//                       Text("Log Out",style: TextStyle(color: Colors.white),)
//                     ],
//                   ),
//                 )
                    ],

                  ),
                )
            ),
          ),
          appBar: AppBar(
            title: Text("Love Search"),
            backgroundColor: Colors.lightBlueAccent,
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.search)),
                Tab(icon: Icon(Icons.message)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.topRight,
//                  end: Alignment.bottomLeft,
//                  colors: [Colors.white,Colors.blueAccent]
//              ),
            ),
            child: TabBarView(
              children: <Widget>[
                SearchPage(),
                Text("hello"),
                DetailProfile(),
              ],
              controller: _tabController,
            ),
          )
//      ),
      );
  }
}
