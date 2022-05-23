// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'shoes_card_screen.dart';

class ShoeShop1 extends StatefulWidget {
  const ShoeShop1({Key? key}) : super(key: key);

  @override
  State<ShoeShop1> createState() => _ShoeShop1State();
}

class _ShoeShop1State extends State<ShoeShop1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(166, 250, 217, 120),
                      Color.fromARGB(197, 253, 232, 42),
                    ], begin: Alignment.bottomCenter),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            Drawer(
                              backgroundColor: Colors.amberAccent,
                              child: SafeArea(
                                  child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 28.0, left: 11, right: 11),
                                child: Column(
                                  children: [
                                    Text("Topics",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: Icons.attractions,
                                        title: "Attractions"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: Icons.dining,
                                        title: "Dining"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: FontAwesomeIcons.pen,
                                        title: "Education"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: Icons.health_and_safety,
                                        title: "Health"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: FontAwesomeIcons.layerGroup,
                                        title: "Family"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: FontAwesomeIcons.home,
                                        title: "Office"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: FontAwesomeIcons.procedures,
                                        title: "Promotions"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: Icons.radio,
                                        title: "Radio"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: Icons.food_bank,
                                        title: "Food"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: Icons.sports,
                                        title: "Sports"),
                                    _buildflatbuttondrawer(context,
                                        routepage: ShoeCardScreen(),
                                        icon: FontAwesomeIcons.bus,
                                        title: "Travels"),
                                  ],
                                ),
                              )),
                            );
                          });
                        },
                        icon: Icon(Icons.menu)),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18),
                      child: Row(
                        children: const [
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Best Online shoes collection",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Image(
                                image: AssetImage('assets/images/shoes/4.png')),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 20),
                child: Transform.translate(
                  offset: const Offset(5, -30),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 212, 200, 200),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      height: 60,
                      width: 820,
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              prefixIcon:
                                  const Icon(FontAwesomeIcons.search)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Row(
                  children: [
                    SizedBox(
                      height: 35,
                      width: 300,
                      child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 70,
                              child: Text(
                                "Choose a category",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            FlatButton(
                                color: const Color.fromARGB(255, 231, 120, 112),
                                onPressed: () {},
                                child: const Text(
                                  "Boys",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 235, 19, 4),
                                      fontWeight: FontWeight.bold),
                                )),
                            const SizedBox(width: 20),
                            FlatButton(
                                color: const Color.fromARGB(255, 230, 192, 189),
                                onPressed: () {},
                                child: const Text("girls")),
                            SizedBox(width: 20),
                            FlatButton(
                                color: const Color.fromARGB(255, 230, 192, 189),
                                onPressed: () {},
                                child: const Text("children")),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildshoescard(context,
                        image: 'assets/images/shoes/3.png',
                        tt: 12,
                        color1: Colors.red,
                        color2: Colors.yellow),
                    _buildshoescard(
                      context,
                      image: 'assets/images/shoes/4.png',
                      tt: 2,
                      color1: const Color.fromARGB(255, 177, 89, 83),
                      color2: const Color.fromARGB(255, 33, 196, 41),
                    ),
                    _buildshoescard(
                      context,
                      tt: 1,
                      image: 'assets/images/shoes/5.png',
                      color1: const Color.fromARGB(255, 211, 29, 16),
                      color2: const Color.fromARGB(255, 218, 180, 14),
                    ),
                    _buildshoescard(
                      context,
                      image: 'assets/images/shoes/6.png',
                      tt: 9,
                      color1: const Color.fromARGB(255, 238, 188, 23),
                      color2: const Color.fromARGB(255, 56, 80, 214),
                    ),
                    _buildshoescard(
                      context,
                      image: 'assets/images/shoes/7.png',
                      color1: const Color.fromARGB(255, 16, 73, 196),
                      tt: 8,
                      color2: const Color.fromARGB(255, 33, 196, 41),
                    ),
                    const SizedBox(width: 40)
                  ],
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildshoescard(
                      context,
                      image: 'assets/images/shoes/8.png',
                      color1: const Color.fromARGB(255, 177, 89, 83),
                      color2: const Color.fromARGB(255, 33, 196, 41),
                      tt: 2.1,
                    ),
                    _buildshoescard(context,
                        image: 'assets/images/shoes/9.png',
                        color1: Colors.red,
                        tt: 22,
                        color2: Colors.yellow),
                    _buildshoescard(
                      context,
                      image: 'assets/images/shoes/3.png',
                      tt: 18,
                      color1: const Color.fromARGB(255, 238, 188, 23),
                      color2: const Color.fromARGB(255, 56, 80, 214),
                    ),
                    _buildshoescard(
                      context,
                      image: 'assets/images/shoes/1.png',
                      color1: const Color.fromARGB(255, 16, 73, 196),
                      tt: 15,
                      color2: const Color.fromARGB(255, 33, 196, 41),
                    ),
                    _buildshoescard(
                      context,
                      image: 'assets/images/shoes/9.png',
                      tt: 0.5,
                      color1: const Color.fromARGB(255, 211, 29, 16),
                      color2: const Color.fromARGB(255, 218, 180, 14),
                    ),
                    const SizedBox(width: 40)
                  ],
                ),
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
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

  Padding _buildshoescard(BuildContext context, {image, color1, color2, tt}) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18.0,
        top: 30,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (contet) => const ShoeCardScreen()));
        },
        child: Container(
          height: 200,
          width: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2]),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("\$$tt",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
