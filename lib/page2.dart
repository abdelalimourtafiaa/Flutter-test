import 'package:firstapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class page2 extends StatelessWidget {

  String name, email, phone;

  page2({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
        centerTitle: true,
        backgroundColor: CupertinoColors.activeGreen,
      ),
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 60),
                ),
                Text('Welcom, here is your information :',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),

              ],
            ),
            Container(child: Text('Name: ${name}',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            )),
           Container( child:  Text('Email: ${email}',
             style: TextStyle(
               fontFamily: 'Roboto',
               fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.cyan,
             ),)),
          Container(child: Text('Phone: ${phone}',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
            ),)),


          ],

        ),


      );

  }
}








