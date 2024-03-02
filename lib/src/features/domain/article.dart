// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

String? thumbnailFromJson(Map<String, dynamic> value) {
  return value['source'] as String?;
}

String urlFromJson(Map<String, dynamic> value) {
  return value['desktop']['page'] as String;
}

@freezed
class Article with _$Article {
  factory Article({
    required String title,
    required String extract,
    @JsonKey(name: 'content_urls', fromJson: urlFromJson) required String url,
    @JsonKey(fromJson: thumbnailFromJson) String? thumbnail,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
