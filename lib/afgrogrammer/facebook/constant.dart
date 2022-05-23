import 'package:flutter/material.dart';
Padding buildpost({post_user_name, user_profile_pic,duration,like_text,post_image,post_disc}) {
    return Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 18, right: 18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(user_profile_pic),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(post_user_name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            duration,
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(width: 95),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    post_disc,
                    style: TextStyle(wordSpacing: 1.2, letterSpacing: 1.4),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(post_image),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                  style: BorderStyle.solid),
                              shape: BoxShape.circle,
                              color: Colors.blue),
                          child: Icon(
                            Icons.thumb_up_rounded,
                            color: Colors.white,
                            size: 17,
                          )),
                      Transform.translate(
                        offset: Offset(-5,0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                  style: BorderStyle.solid),
                              shape: BoxShape.circle,
                              color: Colors.red),
                          child: Icon(Icons.favorite,
                              color: Colors.white, size: 17),
                        ),
                      ),
                      Text(
                        like_text,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        "400 comments",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildlikecomment(color:Colors.blue,icon:Icons.thumb_up,ttext:"like"),
                      buildlikecomment(color:Colors.grey,icon:Icons.comment,ttext:"comment"),
                      buildlikecomment(color:Colors.grey,icon:Icons.share,ttext:"share"),
                    ],
                  ),
              

                ],
              ),
            );
  }

  Row buildlikecomment({ color,icon,ttext}) {
    return Row(
                    children: [
                      RaisedButton(
                       color: Colors.transparent,
                       elevation: 0,
                
                        onPressed: () {},
                        child: Container(
                          child: Row(
                            children: [
                          
                              Icon(icon,
                              color:color,),
                              SizedBox(width:6),
                              Text(ttext,style:TextStyle(color: color))
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
  }

  Container buildstory({back_image, profile_image, username}) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image:
            DecorationImage(image: AssetImage(back_image), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 7, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white, width: 3, style: BorderStyle.solid),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(profile_image), fit: BoxFit.cover)),
            ),
            Text(
              username,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

