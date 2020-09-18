import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_practice/ui/CreateAccount/registration_four.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_select.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_writedown.dart';
import 'package:ui_practice/ui/PersonalInfo/personalinfo_yesno.dart';
//import 'package:universal_html/html.dart' hide Text;

class MoreInformation extends StatefulWidget {
  @override
  _MoreInformationState createState() => _MoreInformationState();
}

class _MoreInformationState extends State<MoreInformation> {
  Color textColor=Colors.black;
  Color iconColor=Colors.blue;
  Color originalColor=Colors.grey[200];
  Color editColor=Colors.orange;

  bool expandFashionStyle=true;
  bool expandFavourites=true;
  bool expandLifeStyle=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.blue[200],
      body:
           Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,
                   colors: [Colors.blue[200],Colors.pink[100]]
               ),
             ),

             child: ListView(
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.only(top: 25.0),
                 ),
                 Container(
//                   width: MediaQuery.of(context).size.width*0.9,
                   child: Card(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(22)),
                        ),
                     margin: EdgeInsets.all(10),

//                  color: Colors.yellow[100],
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Padding(
                           padding: EdgeInsets.only(top: 20.0),
                         ),
                         Container(
                           child: Row(
                             children: <Widget>[
//                            margin: EdgeInsets.only(left:25.0),
                               Padding(padding: EdgeInsets.only(left: 25),),
                               Text("Fashion,Style",style: TextStyle(color: Colors.blue,
//                      fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),),
                               Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.5,),),
                               GestureDetector(
                                 onTap: (){
                                   setState(() {
                                     expandFashionStyle=expandFashionStyle==false?true:false;
                                   });
                                 },
                                 child:
                                 expandFashionStyle==true?
                                 Icon(MdiIcons.arrowCollapse,color: Colors.blue,):
                                 Icon(MdiIcons.arrowExpand,color: Colors.blue,),
                               )
                             ],
                           ),
                         ),
                         expandFashionStyle==false?Container(
                           padding: EdgeInsets.only(top:20),
                         ):
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             GestureDetector(
                             onTap: (){
                               Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => PersonalInfoSelect())
                               );
                             },
                               child: Container(
                                 child: Row(
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(left: 15.0),
                                     ),
                                     Container(
                                       padding: EdgeInsets.all(5),
                                       child: Icon(MdiIcons.pencil,color: editColor,),

                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 5.0),
                                     ),
                                     Text("Edit",style: TextStyle(color: editColor,
                                     ),
                                     )
                                   ],
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(top:18.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.music,color: Colors.lightBlueAccent,),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Music",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Text("Jazz , ",style: TextStyle(color: textColor)),
                                     Text("House , ",style: TextStyle(color: textColor)),
                                     Text("Country , ",style: TextStyle(color: textColor)),
                                     Text("Electric ",style: TextStyle(color: textColor)),
                                   ],
                                 )
                             ),

                             Container(
                               margin: EdgeInsets.only(top:20.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.film,color: Colors.orange[300],),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Movie",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Text("Action , ",style: TextStyle(color: textColor)),
                                     Text("Comedies , ",style: TextStyle(color: textColor)),
                                     Text("Adventure , ",style: TextStyle(color: textColor)),
                                     Text("War ",style: TextStyle(color: textColor)),
                                     Text("Science Fiction ",style: TextStyle(color: textColor)),
                                   ],
                                 )
                             ),


                             Container(
                               margin: EdgeInsets.only(top:20.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.tshirtV,color: Colors.green,),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Fashion Style",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Column(
                                       children: <Widget>[
                                         Padding(padding: EdgeInsets.only(top: 10),),
                                         Text("Casual"),
                                         Container(
                                           width: 80,
                                           height: 130,
                                           padding: EdgeInsets.all(15),
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(20.0),
                                             image: DecorationImage(
                                               image: AssetImage("assets/images/casual1.jpg"),
                                               fit: BoxFit.cover,
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                     Padding(padding: EdgeInsets.only(left: 10),),
                                     Column(
                                       children: <Widget>[
                                         Padding(padding: EdgeInsets.only(top: 10),),
                                         Text("TomBoy"),
                                         Container(
                                           width: 80,
                                           height: 130,
                                           padding: EdgeInsets.all(15),
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(20.0),
                                             image: DecorationImage(
                                               image: AssetImage("assets/images/tomboy2.jpg"),
                                               fit: BoxFit.cover,
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                     Padding(padding: EdgeInsets.only(left: 10),),
                                     Column(
                                       children: <Widget>[
                                         Padding(padding: EdgeInsets.only(top: 10),),
                                         Text("Chic"),
                                         Container(
                                           width: 80,
                                           height: 130,
                                           padding: EdgeInsets.all(15),
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(20.0),
                                             image: DecorationImage(
                                               image: AssetImage("assets/images/chic2.jpg"),
                                               fit: BoxFit.cover,
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 )
                             ),
                             Container(
                               margin: EdgeInsets.only(top:20.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.lightbulb,color: Colors.lightBlueAccent,),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Hobby",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Container(
                                       margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                       child:
                                       Wrap(
                                         children: <Widget>[
                                           Icon(MdiIcons.brush,color: iconColor,),
                                           Icon(MdiIcons.palette,color:iconColor,),
                                           Text(" Painting"),
                                         ],
                                       )
                                       ,
                                       padding: EdgeInsets.all(10),
                                       decoration: BoxDecoration(
                                         color:originalColor,
                                         borderRadius: BorderRadius.circular(20.0),
                                       ),
                                     ),

                                     Container(
                                       margin: const EdgeInsets.fromLTRB(2, 10, 0, 0),
                                       child:
                                       Wrap(
                                         children: <Widget>[
                                           Icon(MdiIcons.flower,color: iconColor,),
//                  Icon(MdiIcons.waterOutline,color: (isGardening==true)?changedIconColor:iconColor,),
                                           Text(" Gardening"),
                                         ],
                                       )
                                       ,
                                       padding: EdgeInsets.all(10),
                                       decoration: BoxDecoration(
                                         color: originalColor,
                                         borderRadius: BorderRadius.circular(20.0),
                                       ),
                                     ),

                                     Container(
                                       margin: const EdgeInsets.fromLTRB(2, 10, 0, 0),
                                       child:
                                       Wrap(
                                         children: <Widget>[
                                           Icon(MdiIcons.run,color: iconColor,),
                                           Icon(MdiIcons.hiking,color: iconColor,),
                                           Icon(MdiIcons.bike,color: iconColor,),
                                           Text(" Track and Edurance Sports"),
                                         ],
                                       )
                                       ,
                                       padding: EdgeInsets.all(10),
                                       decoration: BoxDecoration(
                                         color: originalColor,
                                         borderRadius: BorderRadius.circular(20.0),
                                       ),
                                     ),
                                   ],
                                 )
                             ),
                             Padding(padding: EdgeInsets.only(top:20),)
                           ],
                         )
                       ],
                     ),
                   ),
                 ),

                 Padding(
                   padding: EdgeInsets.only(top: 10.0),
                 ),
//              Divider(),
//              Padding(
//                padding: EdgeInsets.only(top: 10.0),
//              ),
                Container(
//                     width: MediaQuery.of(context).size.width*0.9,
                     child: Card(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(22)),
                       ),
                       margin: EdgeInsets.all(10),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Padding(
                             padding: EdgeInsets.only(top: 20.0),
                           ),

                           Container(
                             child: Row(
                               children: <Widget>[
//                            margin: EdgeInsets.only(left:25.0),
                                 Padding(padding: EdgeInsets.only(left: 25),),
                                 Text("Life Style",style: TextStyle(color: Colors.blue,
//                      fontWeight: FontWeight.bold,
                                     fontSize: 15
                                 ),),
                                 Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 2,),),
                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       expandLifeStyle=expandLifeStyle==false?true:false;
                                     });
                                   },
                                   child:
                                   expandLifeStyle==true?
                                   Icon(MdiIcons.arrowCollapse,color: Colors.blue,):
                                   Icon(MdiIcons.arrowExpand,color: Colors.blue,),
                                 )
                               ],
                             ),
                           ),
                           expandLifeStyle==false?Container(
                             padding: EdgeInsets.only(top:20),
                           ):
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               GestureDetector(
                                 onTap: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => PersonalInfoYesNo())
                                   );
                                 },
                                 child: Container(
                                   child: Row(
                                     children: <Widget>[
                                       Padding(
                                         padding: EdgeInsets.only(left: 15.0),
                                       ),
                                       Container(
                                         padding: EdgeInsets.all(5),
                                         child: Icon(MdiIcons.pencil,color: editColor,),

                                       ),
                                       Padding(
                                         padding: EdgeInsets.only(left: 5.0),
                                       ),
                                       Text("Edit",style: TextStyle(color: editColor,
                                       ),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(top:16.0),
                                 child: Row(
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(left: 25.0),
                                     ),
                                     Container(
                                       padding: EdgeInsets.all(5),
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(120),
                                           border: Border.all( color: Colors.black12)),
                                       child: Icon(MdiIcons.cigarOff,color: Colors.red,),

                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 15.0),
                                     ),
                                     Text("I don't like smoking")
                                   ],
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(top:20.0),
                                 child: Row(
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(left: 25.0),
                                     ),
                                     Container(
                                       padding: EdgeInsets.all(5),
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(120),
                                           border: Border.all( color: Colors.black12)),
                                       child: Icon(MdiIcons.beer,color: Colors.amber,),

                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 15.0),
                                     ),
//                    Text("Music",style: TextStyle(color: Colors.grey,
////                      fontWeight: FontWeight.bold,fontSize: 16
//                    ),
//                    )
                                     Text("I drink alcohol")
                                   ],
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(top:20.0),
                                 child: Row(
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(left: 25.0),
                                     ),
                                     Container(
                                       padding: EdgeInsets.all(5),
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(120),
                                           border: Border.all( color: Colors.black12)),
                                       child: Icon(MdiIcons.head,color: Colors.green,),

                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 15.0),
                                     ),  Flexible(
                                       child:  Text("In matters of love, I will follow my head."),
                                     )
                                   ],
                                 ),
                               ),
                               Padding(padding: EdgeInsets.only(top:20),)
                             ],
                           )
                         ],
                       ),
                     ),
                   ),
                 Padding(
                   padding: EdgeInsets.only(top: 10.0),
                 ),

                 Container(
//                   width: MediaQuery.of(context).size.width*0.9,
                   child: Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(22)),
                     ),
                     margin: EdgeInsets.all(10),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Padding(
                           padding: EdgeInsets.only(top: 20.0),
                         ),
                         Container(
                           child: Row(
                             children: <Widget>[
//                            margin: EdgeInsets.only(left:25.0),
                               Padding(padding: EdgeInsets.only(left: 25),),
                               Text("Favourites",style: TextStyle(color: Colors.blue,
//                      fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),),
                               Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.1,),),
                               GestureDetector(
                                 onTap: (){
                                   setState(() {
                                     expandFavourites=expandFavourites==false?true:false;
                                   });
                                 },
                                 child:
                                 expandFavourites==true?
                                 Icon(MdiIcons.arrowCollapse,color: Colors.blue,):
                                 Icon(MdiIcons.arrowExpand,color: Colors.blue,),
                               )
                             ],
                           ),
                         ),
                         expandFavourites==false?
                         Container(
                           padding: EdgeInsets.only(top:20),
                         ):
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             GestureDetector(
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context) => PersonalInfoWriteDown())
                                 );
                               },
                               child: Container(
                                 child: Row(
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(left: 15.0),
                                     ),
                                     Container(
                                       padding: EdgeInsets.all(5),
                                       child: Icon(MdiIcons.pencil,color: editColor,),

                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 5.0),
                                     ),
                                     Text("Edit",style: TextStyle(color: editColor,
                                     ),
                                     )
                                   ],
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(top:16.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.dramaMasks,color: Colors.purple[300],),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Favourite Actors",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Text("Le RonalDo , ",style: TextStyle(color: textColor)),
                                     Text("IU , ",style: TextStyle(color: textColor)),
                                     Text("Cillian Murphy  ",style: TextStyle(color: textColor)),
                                   ],
                                 )
                             ),

                             Container(
                               margin: EdgeInsets.only(top:20.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.movie,color: Colors.blue,),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Favourite Movies",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Text("Supernatural , ",style: TextStyle(color: textColor)),
                                     Text("Diary of a Wimpy Kid , ",style: TextStyle(color: textColor)),
                                     Text("Sharlock Holmes  ",style: TextStyle(color: textColor)),
                                   ],
                                 )
                             ),

                             Container(
                               margin: EdgeInsets.only(top:20.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.microphone,color: Colors.red[300],),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Favourite Singers",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Text("Sai Sai , ",style: TextStyle(color: textColor)),
                                     Text("Taylor Swift , ",style: TextStyle(color: textColor)),
                                     Text("BTS  ",style: TextStyle(color: textColor)),
                                   ],
                                 )
                             ),


                             Container(
                               margin: EdgeInsets.only(top:20.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.musicAccidentalNatural,color: Colors.green,),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Favourite Songs",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Text("Love Yourself , ",style: TextStyle(color: textColor)),
                                     Text("Tie Me Down , ",style: TextStyle(color: textColor)),
                                     Text("Drown  ",style: TextStyle(color: textColor)),
                                   ],
                                 )
                             ),

                             Container(
                               margin: EdgeInsets.only(top:20.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.book,color: Colors.amber,),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Favourite Book Author",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Text("Mya Than Tint , ",style: TextStyle(color: textColor)),
                                     Text("Shwe U Down , ",style: TextStyle(color: textColor)),
                                     Text("Khin Khin Htoo  ",style: TextStyle(color: textColor)),
                                   ],
                                 )
                             ),

                             Container(
                               margin: EdgeInsets.only(top:20.0),
                               child: Row(
                                 children: <Widget>[
                                   Padding(
                                     padding: EdgeInsets.only(left: 25.0),
                                   ),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(120),
                                         border: Border.all( color: Colors.black12)),
                                     child: Icon(MdiIcons.bookOpen,color: Colors.purple[200],),

                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 15.0),
                                   ),
                                   Text("Favourite Book Tite",style: TextStyle(color: Colors.grey,
//                      fontWeight: FontWeight.bold,fontSize: 16
                                   ),
                                   )
                                 ],
                               ),
                             ),
                             Container(
                                 margin: EdgeInsets.only(left:70),
                                 child: Wrap(
                                   children: <Widget>[
                                     Text("HarryPotter , ",style: TextStyle(color: textColor)),
                                     Text("Taw Twin Yat 100 , ",style: TextStyle(color: textColor)),
                                     Text("Wut Lae Taw Pa Soe Tan Htoe Loe Kyo Nay Me  ",style: TextStyle(color: textColor)),
                                   ],
                                 )
                             ),
                             Padding(padding: EdgeInsets.only(top: 20),)
                           ],
                         )
                       ],
                     ),
                   ),

                 ),
                 Padding(padding: EdgeInsets.only(top: 20),)
               ],
             ),
           )

    );
  }
}
