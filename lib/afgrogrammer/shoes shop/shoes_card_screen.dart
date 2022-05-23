// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:ui_1/afgrogrammer/shoes%20shop/shoes_shop_ui.dart';

class ShoeCardScreen extends StatelessWidget {
  const ShoeCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer:  Drawer(
        backgroundColor: Colors.amberAccent,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 28.0, left: 11, right: 11),
          child: Column(
            children: [
              Text("Topics",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: Icons.attractions,
                  title: "Attractions"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: Icons.dining,
                  title: "Dining"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: FontAwesomeIcons.pen,
                  title: "Education"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: Icons.health_and_safety,
                  title: "Health"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: FontAwesomeIcons.layerGroup,
                  title: "Family"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: FontAwesomeIcons.home,
                  title: "Office"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: FontAwesomeIcons.procedures,
                  title: "Promotions"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: Icons.radio,
                  title: "Radio"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: Icons.food_bank,
                  title: "Food"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: Icons.sports,
                  title: "Sports"),
              _buildflatbuttondrawer(context,
                  routepage: ShoeShop1(),
                  icon: FontAwesomeIcons.bus,
                  title: "Travels"),
            ],
          ),
        )),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0),
                child: Container(
              height: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [Colors.redAccent, Colors.red],
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/shoes/5.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(height:40)
,              Transform.translate(
                offset: Offset(0, 0),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 58.0, left: 12, right: 12),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ranger Sport",
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Ankle Men's Athletic Shoes",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 51, 10, 10),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                              "Range sport shoe are a fusion of material of the studies quantity and  versatile design that suit all purpose . Each paid of Range shoes is knitted from 100% combined cotton yarn running along a reinforced 2-py core polyster bsed elastic through out the socks."),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 20),
                            child: Row(
                              children: [
                                _buildcolorcircle(),
                                Container(
                                  margin: EdgeInsets.only(right: 12),
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 224, 14, 14),
                                  ),
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 47, 67, 248),
                                  ),
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 223, 204, 33),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:48.0),
                            child: RaisedButton(
                              color: Colors.red,
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              onPressed: () {},
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("\$2",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                    Text("pay",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
   FlatButton _buildflatbuttondrawer(BuildContext context,
      {routepage, icon, title}) {
    return FlatButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => routepage));
        },
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 12,
            ),
            Text(title)
          ],
        ));
  }

  Container _buildcolorcircle() {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: Color.fromARGB(255, 238, 38, 11),
            width: 3,
            style: BorderStyle.solid),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          border: Border.all(
              color: Color.fromARGB(255, 235, 231, 230),
              width: 3,
              style: BorderStyle.solid),
        ),
      ),
    );
  }
}
