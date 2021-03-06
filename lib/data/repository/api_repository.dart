import 'package:daily_news/data/api/api_request.dart';
import 'package:daily_news/data/api/response/article_response.dart';
import 'package:daily_news/data/api/response/source_response.dart';
import 'package:daily_news/models/article.dart';
import 'package:daily_news/models/source.dart';

class ApiRepository {
  ApiRequest request = ApiRequest();

  ApiRepository();

  Future<List<Article>> fetchAllTopHeadline() async {
    ArticleResponse articleResponse = await request.requestAllTopHeadline();
    return articleResponse.articles;
  }

  Future<List<Article>> fetchFavoriteArticle(String category) async {
    ArticleResponse articleResponse =
        await request.requestFavoriteArticles(category);
    return articleResponse.articles;
  }

  Future<List<Article>> fetchTopicArticle(String topic) async {
    ArticleResponse articleResponse = await request.requestAllTopic(topic);
    return articleResponse.articles;
  }

  Future<List<Article>> fetchAllArticleFromSource(String name) async {
    ArticleResponse articleResponse =
        await request.requestAllArticlesFromSource(name);
    return articleResponse.articles;
  }

  Future<List<Source>> fetchAllSources() async {
    SourceResponse sourceResponse = await request.requestAllSources();
    return sourceResponse.sources;
  }
}
