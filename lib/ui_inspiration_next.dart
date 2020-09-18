import 'package:flutter/material.dart';

class UiInspirationNext extends StatefulWidget {
  @override
  _UiInspirationNextState createState() => _UiInspirationNextState();
}

class _UiInspirationNextState extends State<UiInspirationNext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  ' assets/images/Dating.jpg'
                ),
                   fit: BoxFit.cover,
              ),
            ),
//            child: Center(
               child: Column(
                 children: <Widget>[
                   Stack(
                     alignment: Alignment.bottomCenter,
                     children: <Widget>[
//                    Container(color: Colors.blue, width: MediaQuery.of(context).size.width / 3.0, height: MediaQuery.of(context).size.width / 3.0),
                       PreferredSize(
                         preferredSize: Size.fromHeight(200.0),
                         child:AppBar(
                           title: Text("Transparent AppBar"),
                           backgroundColor: Colors.red,
                           elevation: 0,
                           actions: <Widget>[
                             IconButton(
                               icon: Icon(Icons.share),
                               onPressed: () {},
                               tooltip: 'Share',
                             ),
                           ],
                         ),
                       ),
                       FractionalTranslation(
                         translation: Offset(0.0, 0.5),
                         child: Container(
//                           color: Colors.red,
                           width: MediaQuery.of(context).size.width / 6.0,
                           height: MediaQuery.of(context).size.width / 6.0,
                           child:
                           Icon(Icons.book,size: 100,),
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                               ' assets/images/Dating.jpg'
//                             )
//                           )
//                         ),
                         ),
                       )
                     ],
                   )
                 ],
               ),
//            ),
          ),
//          Positioned(
//            child: AppBar(
//              title: Text("Transparent AppBar"),
//              backgroundColor: Colors.transparent,
//              elevation: 0,
//              actions: <Widget>[
//                IconButton(
//                  icon: Icon(Icons.share),
//                  onPressed: () {},
//                  tooltip: 'Share',
//                ),
//              ],
//            ),
//          )
        ],
      ),
    );
  }
}
