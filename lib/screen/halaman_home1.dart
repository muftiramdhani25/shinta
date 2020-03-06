import 'package:flutter/material.dart';
import 'package:shinta/screen/halaman_search.dart';

class HalamanaHome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 150.0,
        width: double.infinity,
        color: Color(0xff10586E),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){

              },),
            Image.network('http//sinta'),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20.0),
                ),
                child: Text('Search',),
                onPressed: (){
//                  Navigator.pushNamed(context, MaterialPageRoute(builder: (context)=> ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
