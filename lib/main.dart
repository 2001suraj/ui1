// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui_1/Book%20Management/selected%20_book_screen.dart';
import 'package:ui_1/afgrogrammer/facebook/face1_screen.dart';
import 'package:ui_1/afgrogrammer/find%20inspiration/find_inspiration.dart';
import 'package:ui_1/afgrogrammer/shoes%20shop/shoes_shop_ui.dart';
import 'package:ui_1/news/sceen/home.dart';

import 'Book Management/home_page.dart';
import 'Main Widget/drawer_sidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: BookHomeScaffold(),
    );
  }
}

class BookHomeScaffold extends StatelessWidget {
  const BookHomeScaffold({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title:const  Text("Widget"),
          ),
          drawer:const  DrawerWidget(),
          body: SingleChildScrollView(
            child: Container(
              decoration:const  BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.deepOrange,
                  Colors.black,
                  Colors.white,
                  Colors.blue
                ], begin: Alignment.topRight, end: Alignment.bottomLeft),
              ),
              height: 900,
              width: double.infinity,
              child: Column(children: [
               const  SizedBox(height: 20,),
                buildcustomraisedbutton(context,route:BookHomePage(),image:'assets/images/coverpage.jpeg',title:"Online book"),
               const  SizedBox(height: 20,),
          
                buildcustomraisedbutton(context, route: FindInspiration1(), image:'assets/images/car/2.jpeg',title: "Inspiration"),
                 SizedBox(height: 20,),
                buildcustomraisedbutton(context, route:FaceScreen1(), image:'assets/images/nature/9.jpeg',title: 'facebook'),
                 SizedBox(height: 20,),
                buildcustomraisedbutton(context, route:ShoeShop1(), image:'assets/images/shoes/8.png',title: 'shoe shop'),
                buildcustomraisedbutton(context, route:Home(), image:'assets/images/nature/12.jpeg',title: 'News'),
          
              ]),
            ),
          ));
  }

  RaisedButton buildcustomraisedbutton(BuildContext context,{route, image, title}) {
    return RaisedButton(
              color:Colors.transparent,
              elevation:0,
              onPressed: () {
             
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  route));

              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image:  DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20),),
                    height: 100,
                    width: 200,
                  ),
                  SizedBox(height:20)
,                  Text(title,style: TextStyle(color:Colors.white,fontSize: 24, fontWeight:FontWeight.bold),)
                ],
              ),
            );
  }
}
 
  