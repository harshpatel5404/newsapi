// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsApi _$NewsApiFromJson(Map<String, dynamic> json) {
  return NewsApi()
    ..status = json['status'] as String?
    ..totalResults = json['totalResults'] as int?
    ..articles = (json['articles'] as List<dynamic>?)
        ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$NewsApiToJson(NewsApi instance) => <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
