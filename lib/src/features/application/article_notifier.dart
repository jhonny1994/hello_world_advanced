import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hello_world_advanced/consts.dart';
import 'package:hello_world_advanced/src/features/domain/article.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'article_notifier.g.dart';

@riverpod
class ArticleNotifier extends _$ArticleNotifier {
  @override
  Future<Either<Article, String>> build(Dio dio) async {
    try {
      final response = await dio.get(path);
      return switch (response.statusCode) {
        200 => left(Article.fromJson(response.data as Map<String, dynamic>)),
        _ => right(response.statusMessage!),
      };
    } on DioException catch (e) {
      return right(e.message!);
    }
  }
}
