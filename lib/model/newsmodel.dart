import 'package:json_annotation/json_annotation.dart';
import 'articlemodel.dart';
part 'newsmodel.g.dart';

@JsonSerializable()
class NewsApi {
  NewsApi();

  String? status;
  int? totalResults;
  List<Article>? articles;

  factory NewsApi.fromJson(Map<String, dynamic> json) =>
      _$NewsApiFromJson(json);
  Map<String, dynamic> toJson() => _$NewsApiToJson(this);
}
