// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      title: json['title'] as String,
      extract: json['extract'] as String,
      url: urlFromJson(json['content_urls'] as Map<String, dynamic>),
      thumbnail: thumbnailFromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'extract': instance.extract,
      'content_urls': instance.url,
      'thumbnail': instance.thumbnail,
    };
