import 'package:flutter/cupertino.dart';

class ShowImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('assets/images/xiaozhan.jpg'),
      ),
    );
  }
}
