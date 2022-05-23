import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ui_1/news/models/news_model.dart';

class News {
  List<NewModel> news = [];
  List<NewModel> hots = [];
   NewModel? hotmodel;
   NewModel? newsModel;
  Future<void> getNews() async {
    String api =
        "https://newsapi.org/v2/everything?q=tesla&from=2022-01-20&sortBy=publishedAt&apiKey=c6fe9668b80d4a55ba8c5081fb6f4b5a";
    var response = await http.get(Uri.parse(api));
    var responseDate = jsonDecode(response.body);
    if (responseDate["status"] == "ok") {
      responseDate["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          newsModel = NewModel(
              urlToImage: element["urlToImage"],
              publishedAt: DateTime.parse(element["publishedAt"]),
              title: element["title"],
              url: element["url"]);
          news.add(newsModel!);
        }
      });
    }
  }

  Future<void> gethot() async {
    String apii =
        "https://newsapi.org/v2/everything?q=apple&from=2022-02-19&to=2022-02-19&sortBy=popularity&apiKey=c6fe9668b80d4a55ba8c5081fb6f4b5a";
    var response = await http.get(Uri.parse(apii));
    var responseDate = jsonDecode(response.body);
    if (responseDate["status"] == "ok") {
      responseDate["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          hotmodel = NewModel(
               urlToImage: element["urlToImage"],
              publishedAt: DateTime.parse(element["publishedAt"]),
              title: element["title"],
              url: element["url"]);
          hots.add(hotmodel!);
        }
      });
    }
 
  }

}
 