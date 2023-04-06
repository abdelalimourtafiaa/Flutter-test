import 'package:firstapp/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Home(),
     ));

   class Home extends StatelessWidget{
     TextEditingController _name = TextEditingController();
     TextEditingController _email = TextEditingController();
     TextEditingController _phone = TextEditingController();

     @override
     Widget build(BuildContext context) {
       return Scaffold(
       appBar: AppBar(
             title: Text('first project'),
              centerTitle: true,
               backgroundColor: CupertinoColors.activeGreen,
               ),
           body:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
               controller: _name ,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Name'
               ),
             ),
           ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                   controller: _email ,
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Enter Email'
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                   keyboardType: TextInputType.number,
                   controller: _phone ,
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Enter Phone'

                   ),
                 ),
               ),
               SizedBox(height: 20,),
             ElevatedButton(onPressed: ()
             {Navigator.of(context).push(MaterialPageRoute
               (builder: (context)=>page2(name: _name.text, email: _email.text, phone: _phone.text)));}
                 , child: Text('Go to page2'))

             ],
           )
                );
                }

                }








