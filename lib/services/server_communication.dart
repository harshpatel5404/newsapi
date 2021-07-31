import 'package:dio/dio.dart';
import 'package:newsapi/model/articlemodel.dart';
import 'package:newsapi/model/newsmodel.dart';

String url = "https://newsapi.org/";
String api = "5f7e945a2762453a84a8c83100294b59";

Future<Dio> getDio() async {
  var options = BaseOptions(
      baseUrl: url,
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },
      responseType: ResponseType.json);

  Dio dio = Dio(options);
  return dio;
}

Future<List<Article>?> getNewsHeadline(String query) async {
  Dio dio = await getDio();
  if (query == "") {
   query = "india";
    
  }
  print("Query $query");

  try {
    Response response = await dio.get("v2/everything?q=$query&apiKey=$api");
    final data = NewsApi.fromJson(response.data);

    return data.articles;
  } on Exception catch (e) {
    print(e);
    return null;
  }
}
