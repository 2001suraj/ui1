import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class FaceScreen1 extends StatefulWidget {
  const FaceScreen1({Key? key}) : super(key: key);

  @override
  _FaceScreen1State createState() => _FaceScreen1State();
}

class _FaceScreen1State extends State<FaceScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 8, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Facebook",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                            wordSpacing: 1.3)),
                    RaisedButton(
                      color: Colors.transparent,
                      elevation: 0,
                      onPressed: () {},
                      child: Stack(
                        children: [
                          Icon(FontAwesomeIcons.facebookMessenger),
                          Positioned(
                            left:10,
                            top:-3,
                            child: Container(
                              alignment: Alignment.center,
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  border:Border
.all(color:Colors.white,width: 2,style:BorderStyle.solid),                                 color:Colors.red,
                                  shape: BoxShape.circle),
                                child: Text("2",
                                    style: TextStyle(
                                      fontSize: 8,
                                        color: Color.fromARGB(255, 238, 234, 234),
                                        fontWeight: FontWeight.bold))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                height: 120,
                child: Row(
                  children: [
                    Container(
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white24,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              prefixIcon: Icon(Icons.search),
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Search"),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt, size: 25)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "Stories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text("See Active"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18, right: 18),
                child: Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildstory(
                          back_image: 'assets/images/nature/3.jpeg',
                          profile_image: 'assets/images/car/3.jpeg',
                          username: "Riata hyama"),
                      buildstory(
                          back_image: 'assets/images/nature/4.jpeg',
                          profile_image: 'assets/images/car/4.jpeg',
                          username: "Kyas Asaalma"),
                      buildstory(
                        back_image: 'assets/images/nature/5.jpeg',
                        profile_image: 'assets/images/car/5.jpeg',
                        username: "Pista Lyama",
                      ),
                       buildstory(
                        back_image: 'assets/images/nature/6.jpeg',
                        profile_image: 'assets/images/car/6.jpeg',
                        username: 'Ista Imama'
                      ),
                       buildstory(
                        back_image: 'assets/images/nature/7.jpeg',
                        profile_image: 'assets/images/car/7.jpeg',
                        username: "Rutaama Roe",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              buildpost(
                  post_user_name: "Pista Lyama",
                  like_text:"2.5k",
                  post_image: 'assets/images/nature/12.jpeg',
                  post_disc:
                      " repellat mollitia quod omnis ipsamfuga officia. Ullusandae",
                  user_profile_pic: 'assets/images/car/5.jpeg',
                  duration: "1 min ago"),
              SizedBox(height: 20),
              buildpost(
                post_user_name: "Riata hyama",
                  like_text:"5k",

                user_profile_pic: 'assets/images/car/3.jpeg',
                post_image: 'assets/images/nature/6.jpeg',
                duration: "1 hr ago",
                post_disc:
                    "Aspernatur odit ess ut hic magni earum doloribus! Eligendi voluptatum repellat mollitia quod omnis ipsamfuga officia. Ullam, consectetur debitis. Et, recusandae",
              ),
              SizedBox(height: 20),
              buildpost(
                  post_user_name: "Kyas Assalma",
                  like_text:"500",

                  post_image: 'assets/images/nature/7.jpeg',
                  post_disc:
                      "Aspernatur odit ess ut hiquod omnis ipsamfuga officia. Ullam, co, recusandae",
                  user_profile_pic: 'assets/images/car/4.jpeg',
                  duration: "12 hr ago"),
              SizedBox(height: 20),
              buildpost(
                  post_user_name: "Kyas Assalma",
                  like_text:"1k",

                  post_image: 'assets/images/nature/9.jpeg',
                  post_disc:
                      " odit es omnis ipsamfuga officia. Ullam, co, recusandae",
                  user_profile_pic: 'assets/images/car/4.jpeg',
                  duration: "2 hr ago"),
              SizedBox(height: 20),
              buildpost(
                  post_user_name: "Pista Lyama",
                  post_image: 'assets/images/nature/8.jpeg',
                  like_text:"997",

                  post_disc:
                      "voluptatum repellat mollitia quod omnis ipsamfuga officia. Ullusandae",
                  user_profile_pic: 'assets/images/car/5.jpeg',
                  duration: "2 day ago"),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
