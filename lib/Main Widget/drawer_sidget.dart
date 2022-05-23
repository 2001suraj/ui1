// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      child: Container(
        width: 250,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
            right: 18,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 50,
            ),
              Container(color: Colors.red,height:50),

            _buildDraweritems(Icon(Icons.move_to_inbox), "index"),
            _buildDraweritems(Icon(Icons.star), "starred"),
            _buildDraweritems(Icon(Icons.send), "Send Email"),
            _buildDraweritems(Icon(Icons.drafts), "drafts"),
           


           
            Divider(),
            Text("Sub heading"),
             _buildDraweritems(Icon(Icons.email), "email"),
            _buildDraweritems(Icon(Icons.delete), "Trash"),
            _buildDraweritems(Icon(Icons.error), "Spam"),

          
          ]),
        ),
      ),
    );
  }

  RaisedButton _buildDraweritems(Widget icon,  String title) {
    return RaisedButton(
      color: Colors.transparent,
      elevation: 0,
      onPressed: () {},
      child: Row(
        children:  [
          icon,
         const  SizedBox(width:  10,),
          Text(title),
        ],
      ),
    );
  }
}

  
