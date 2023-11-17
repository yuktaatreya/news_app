import 'package:news_application/screens/home_page/data/news_response.dart';

abstract class FetchNewsState{
  const FetchNewsState();
}

class FetchNewsStateInitial extends FetchNewsState{
  const FetchNewsStateInitial();
 
}

class FetchNewsLoadingState extends FetchNewsState{
  const FetchNewsLoadingState();
 
}

class FetchNewsSuccessState extends FetchNewsState{
  final NewsResponse newsResponse;
  const FetchNewsSuccessState({required this.newsResponse});
 
}
class FetchNewsErrorState extends FetchNewsState{
  const FetchNewsErrorState();
 
}


