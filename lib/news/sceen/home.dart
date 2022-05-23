import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_1/news/clases/articles_news.dart';
import 'package:ui_1/news/models/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   late List<NewModel> mylist;
late List<NewModel> hotlist;
  @override
  void initState()  {
    data();
    super.initState();
  }

  void data() async {
    News news = News();
    await news.getNews();
    await news.gethot();
    setState(() {
      mylist = news.news;
      hotlist = news.hots;
    });
  }

  Future<void> _urlLuncher(String url) async {
    if (await canLaunch(url)) {
      launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{
          "my_header_view": "my_header_value",
        },
      );
    } else {
      throw "This  $url cannot view";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(96, 202, 96, 96),
        appBar: AppBar(
          backgroundColor: Colors.black38,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 20, top: 20),
                child: Container(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "Today's News",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "September, Thursday",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/suraj.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 860,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0, bottom: 14),
                        child: Text("Latest News",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 340,
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 344,
                                width: 830,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: mylist.length,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                          onTap: () {
                                            _urlLuncher(mylist[index].url);
                                          },
                                          child: buildsinglepageview(
                                            image: mylist[index].urlToImage,
                                            title: mylist[index].title,
                                            date: mylist[index].publishedAt,
                                          ),
                                        )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Text(
                          "Hot News",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 400,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: [
                              Container(
                                height: 400,
                                width: 370,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: hotlist.length,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                          onTap: () {
                                            _urlLuncher(hotlist[index].url);
                                          },
                                          child: buildsinglepagehotview(
                                            image: hotlist[index].urlToImage,
                                            title: hotlist[index].title,
                                            date: hotlist[index].publishedAt,
                                          ),
                                        )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildsinglepageview({image, date, title}) {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
              height: 220,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: image.toString().isNotEmpty
                  ? Image(image: NetworkImage(image), fit: BoxFit.cover)
                  : Center(
                      child: CircularProgressIndicator(),
                    )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 320,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                DateFormat("MMM dd, yyyy- kk:mm").format(date),
                style: TextStyle(fontSize: 15, color: Colors.black38),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row buildsinglepagehotview({image, date, title}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: image.toString().isNotEmpty
                  ? Image(image: NetworkImage(image), fit: BoxFit.cover)
                  : Center(
                      child: CircularProgressIndicator(),
                    )),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 220,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                DateFormat("MMM dd, yyyy- kk:mm").format(date),
                style: TextStyle(fontSize: 15, color: Colors.black38),
              ),
            ],
          ),
        ),
      ],
    );
  }
  
}
