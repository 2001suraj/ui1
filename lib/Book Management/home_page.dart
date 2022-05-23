// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:ui_1/Book%20Management/book_data.dart';

import '../main.dart';
import 'selected _book_screen.dart';

class BookHomePage extends StatelessWidget {
  BookHomePage({Key? key}) : super(key: key);
  final List<String> image = [
    'assets/images/book1.jpg',
    'assets/images/book2.jpg',
    'assets/images/book3.jpg',
    'assets/images/book4.jpg',
    'assets/images/book5.jpg',
    'assets/images/book6.jpg',
    'assets/images/book8.jpg',
    'assets/images/book9.jpg',
    'assets/images/book10.jpg',
  ];
  final List<String> tt = [
    '''Mathematics in Computing''',
    'Cambridge  Computer Science',
    '''Computer Science Principles''',
  ];
  final List<String> author = [
    'Gerard O’Regan',
    'Dave Watson; Helen Williams',
    'Mr. Kevin P Hare, Pindar Van Arman'
  ];

  final List<String> price = [
    '\$20',
    '\$30',
    '\$60',
    '\$70',
    '\$80',
    '\$140',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          height: 1900,
          width: double.infinity,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 20),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const MyApp()));
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hi , Rizhi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              "Discover Latest Book",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: TextField(
                      maxLengthEnforced: true,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.search, size: 16)),
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 38.0),
                    child: Container(
                      child: const DefaultTabController(
                        length: 3,
                        child: TabBar(
                          labelColor: Colors.black,
                          unselectedLabelColor:
                              Color.fromARGB(255, 129, 117, 117),
                          isScrollable: true,
                          indicatorPadding: EdgeInsets.all(15),
                          tabs: [
                            Tab(
                              child: Text("New"),
                            ),
                            Tab(
                              child: Text("Trending"),
                            ),
                            Tab(
                              child: Text("Best sellers"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: SizedBox(
                      height: 285,
                      child: ListView.builder(
                          itemCount: image.length,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SelectedBook1()));
                              },
                              child: SizedBox(
                                width: 120,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage(image[index]),
                                        ),
                                      ),
                                      height: 150,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Text(tt[index % tt.length],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 38.0),
                    child: Text("Popular",
                        style: TextStyle(color: Colors.white, fontSize: 26)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: SizedBox(
                        height: 310,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: image.length,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            reverse: false,
                            itemBuilder: (BuildContext context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SelectedBook1()),);
                                },
                                child: SizedBox(
                                    // width: 120,
                                    height: 200,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 15),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: AssetImage(image[index]),
                                            ),
                                          ),
                                          height: 180,
                                          width: 150,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 30),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                  width: 150,
                                                  child: Text(
                                                      tt[index % tt.length],
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight
                                                              .bold))),
                                              SizedBox(height: 10),
                                              Text(
                                                author[index % author.length],
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 190, 103, 103),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(price[index % price.length],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              );
                            })),
                  ),
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
