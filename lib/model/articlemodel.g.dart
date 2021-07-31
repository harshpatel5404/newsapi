// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articlemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article()
    ..author = json['author'] as String?
    ..urlToImage = json['urlToImage'] as String?
    ..description = json['description'] as String?
    ..title = json['title'] as String?;
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'author': instance.author,
      'urlToImage': instance.urlToImage,
      'description': instance.description,
      'title': instance.title,
    };
