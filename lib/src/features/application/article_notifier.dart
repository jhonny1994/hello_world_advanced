import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hello_world_advanced/consts.dart';
import 'package:hello_world_advanced/src/features/domain/article.dart';
import 'package:hello_world_advanced/src/features/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'article_notifier.g.dart';

@riverpod
Future<Either<Article, String>> articleService(ArticleServiceRef ref) async {
  try {
    final response = await ref.read(dioProvider).get(path);
    final article = Article.fromJson(response.data as Map<String, dynamic>);
    return left(article);
  } on DioException catch (e) {
    return right(e.message!);
  }
}
