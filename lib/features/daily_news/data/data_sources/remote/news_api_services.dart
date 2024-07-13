import 'package:dio/dio.dart';
import 'package:newsapp/core/constants/constants.dart';
import 'package:newsapp/features/daily_news/data/models/article.dart';
import 'package:retrofit/http.dart';
part 'news_api_services.g.dart';

@RestApi(baseUrl: newsAPIBaseUrl)
abstract class NewsApiServices{
  factory NewsApiServices(Dio dio,{String baseUrl}) = _NewsApiServices;

  @GET('/top-headlines')
  Future<List<ArticleModel>> getNewsArticles({
    @Query('apiKey') String? apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
  });

}