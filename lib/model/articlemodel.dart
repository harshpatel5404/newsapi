import 'package:json_annotation/json_annotation.dart';

part 'articlemodel.g.dart';

@JsonSerializable()
class Article {
  Article();
  String? author;
  String? urlToImage;
  String? description;
  String? title;

   factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
  
}