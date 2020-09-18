import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_practice/ui/LoginAccount/Outcome_match.dart';
import 'package:ui_practice/ui/filter_search.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: <Widget>[
            Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            content: FilterSearch(),

                          );
                        }
                    );
//                  Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context)=>FilterSearch()));
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 220.0),
                      ),
                      Icon(MdiIcons.filter,color: Colors.orange,),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                      ),
                      Text("Filter",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,color: Colors.orange),)
                    ],
                  ),
                ),
                OutcomeMatch()
              ],
            ),
          ],
        )
    );
  }
}
