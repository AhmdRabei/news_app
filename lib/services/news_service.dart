import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  // final ArticleModel artModelq;
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=f9292769e29544e5bc088085f5b23a5b&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel artcle = ArticleModel(
            articleImage: article['urlToImage'],
            title: article['title'],
            subTitle: article['description'],
            url: article['url']);
        articlesList.add(artcle);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
