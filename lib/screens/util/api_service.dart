import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_application/screens/home_page/data/news_response.dart';

import 'api_endpoints.dart';

class ApiService{
  Future<NewsResponse>fetchNews()async{
    try{
      Uri fetchNewsUrl = Uri.parse(ApiEndpoints.fetchNews());
      final response = await http.get(fetchNewsUrl);
      if(response.statusCode==200 && response.body.isNotEmpty){
        return NewsResponse.fromJson(jsonDecode(response.body));
      }
      else{
        return NewsResponse.withError();
      }
    }
    catch(e){
      return NewsResponse.withError();
    }
  }
}