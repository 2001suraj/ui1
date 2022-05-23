// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'book_data.dart';

class SelectedBook1 extends StatelessWidget {

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
  // final SelectedBook12 selectaa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
        child: FlatButton(
          color: Colors.red,
          focusColor: Colors.yellow,
          onPressed: () {
            print("hello");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("Add to library"),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, index) {
          return SizedBox(
            height: 900,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.red,
                  expandedHeight: MediaQuery.of(context).size.height * 0.5,
                  flexibleSpace: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 190,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(image[index%image.length]),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Text("Auther name"),
                      Text("hello"),
                      Text("\$20"),
                      Container(
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
                                child: Text("Description"),
                              ),
                              Tab(
                                child: Text("Reviews"),
                              ),
                              Tab(
                                child: Text("Similar"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '''
        This illuminating textbook provides a concise review of the core concepts in mathematics essential to computer scientists. Emphasis is placed on the practical computing applications enabled by seemingly abstract mathematical ideas, presented within their historical context. The text spans a broad selection of key topics, ranging from the use of finite field theory to correct code and therole of number theory in cryptography, to the value of graph theory when modelling networks and the importance of formal methods for safety critical systems.
        
        This illuminating textbook provides a concise review of the core concepts in mathematics essential to computer scientists. Emphasis is placed on the practical computing applications enabled by seemingly abstract mathematical ideas, presented within their historical context. The text spans a broad selection of key topics, ranging from the use of finite field theory to correct code and therole of number theory in cryptography, to the value of graph theory when modelling networks and the importance of formal methods for safety critical systems.
        
        
        This illuminating textbook provides a concise review of the core concepts in mathematics essential to computer scientists. Emphasis is placed on the practical computing applications enabled by seemingly abstract mathematical ideas, presented within their historical context. The text spans a broad selection of key topics, ranging from the use of finite field theory to correct code and therole of number theory in cryptography, to the value of graph theory when modelling networks and the importance of formal methods for safety critical systems.
        
        ''',
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
