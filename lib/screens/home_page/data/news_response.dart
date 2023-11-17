class NewsResponse{
  List<NewsDetails>? newsItems;
  String? error;
  NewsResponse();

  NewsResponse.withError({String error = "Something went wrong"});

  NewsResponse.fromJson(dynamic json) {
    newsItems=<NewsDetails>[];
    if(json!=null){
      json.forEach((v){
        newsItems?.add(NewsDetails.fromJson(v));
      });

    }
  }
}
class NewsDetails {
  int? userId;
  int? id;
  String? title;
  String? body;
  String? error;

  NewsDetails({this.userId, this.id, this.title, this.body});

  NewsDetails.withError({String error = "Something went wrong"});

  NewsDetails.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}