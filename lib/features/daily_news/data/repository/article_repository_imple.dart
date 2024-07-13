import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/features/daily_news/data/models/article.dart';
import 'package:newsapp/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImple extends ArticleRepository{
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() {
    throw UnimplementedError();
  }

}