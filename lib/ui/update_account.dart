import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_practice/ui/show_image.dart';

class UpdateAccount extends StatefulWidget {
  @override
  _UpdateAccountState createState() => _UpdateAccountState();
}

class _UpdateAccountState extends State<UpdateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Stack(
//              alignment: Alignment.bottomCenter,
              children: <Widget>[
//                    Container(color: Colors.blue, width: MediaQuery.of(context).size.width / 3.0, height: MediaQuery.of(context).size.width / 3.0),
                Container(
                  height: 40.0,
                  child: PreferredSize(
//                preferredSize: Size.fromHeight(300.0),
                    child: AppBar(
                      backgroundColor: Colors.lightBlueAccent,
                      shape: CustomShapeBorder(),
//                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.vertical(
//                      bottom: Radius.circular(30),
//                    ),
//                  ),
//                  automaticallyImplyLeading: false,
                    ),
                  ),
                ),
                FractionalTranslation(
                    translation: Offset(0.0, 0.2),
                    child: Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>ShowImage()),
                            );
                          },
                          child: Container(
                            width: 120,
                            height: 120,
//                      child: Image(
//                        image: AssetImage('assets/images/wang yibo.jpg'),
//                        height: 100,
//                        width: 100,
//                        fit: BoxFit.cover,
//                      ),
                            decoration: BoxDecoration(
                              image:DecorationImage(image: AssetImage('assets/images/xiaozhan.jpg'),
                                fit: BoxFit.cover,),
                              borderRadius: new BorderRadius.all(new Radius.circular(150.0)),
                              border: Border.all( color: Colors.white12,width: 3),
//                           border: new Border.all(color: Colors.red,width: 200)
                            ),
                          ),
                        )
                    )
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:30.0),
            ),
            Center(
              child: Text("Xiao Zhan",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            Padding(
              padding: EdgeInsets.only(top:20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite_border,color: Colors.red,),
                    Text("Interested"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left:50.0),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.message,color: Colors.blue,),
                    Text("Message"),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:40.0),
            ),
//            Icon(MdiIcons.account,size: 200.0,),
            Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.calendar_today,color: Colors.orange,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Birthday",style: TextStyle(color: Colors.grey),),
                            Text("10.10.1986",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:9.0),
                    ),
//                  Divider(color: Colors.lightBlueAccent,),
                    Padding(
                      padding: EdgeInsets.only(top:9.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.person,color: Colors.blue,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Gender",style: TextStyle(color: Colors.grey),),
                            Text("Male",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.home,color: Colors.deepPurple,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Address",style: TextStyle(color: Colors.grey),),
                            Text("Monywa, Sagaing",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.business_center,color: Colors.green,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Occupation",style: TextStyle(color: Colors.grey),),
                            Text("Doctor",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.vertical_align_top,color: Colors.orangeAccent,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Height",style: TextStyle(color: Colors.grey),),
                            Text("6' 2\"",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.accessibility,color: Colors.pink,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Weight",style: TextStyle(color: Colors.grey),),
                            Text("132 lb",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.remove_red_eye,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Eye Color",style: TextStyle(color: Colors.grey),),
                            Text("brown",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.face,color: Colors.grey,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Hair Color",style: TextStyle(color: Colors.grey),),
                            Text("black",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.favorite,color: Colors.red,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Marital Status",style: TextStyle(color: Colors.grey),),
                            Text("Single",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all( color: Colors.black12)),
                          child: Icon(Icons.search,color: Colors.blue,),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("About Me",style: TextStyle(color: Colors.grey),),
                            Text("Hey! I'm now looking for a girl",style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ],
                    ),

                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return new SizedBox.fromSize(
      size: preferredSize,
      child: new LayoutBuilder(builder: (context, constraint) {
        final width = constraint.maxWidth * 8;
        return new ClipRect(
          child: new OverflowBox(
            maxHeight: double.infinity,
            maxWidth: double.infinity,
            child: new SizedBox(
              width: width,
              height: width,
              child: new Padding(
                padding: new EdgeInsets.only(
                    bottom: width / 2 - preferredSize.height / 2),
                child: new DecoratedBox(
                  decoration: new BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    boxShadow: [
                      new BoxShadow(color: Colors.black54, blurRadius: 10.0)
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(200.0);
}

class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {

    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30, rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(
        rect.width / 2 - 40, rect.height + innerCircleRadius - 40,
        rect.width / 2 + 40, rect.height + innerCircleRadius - 40,
        rect.width / 2 + 75, rect.height + 50
    );
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30, rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}
