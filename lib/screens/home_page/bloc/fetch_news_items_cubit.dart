
import 'package:bloc/bloc.dart';
import 'package:news_application/screens/home_page/bloc/fetch_news_items_state.dart';
import 'package:news_application/screens/home_page/data/news_response.dart';
import 'package:news_application/screens/util/api_service.dart';

class FetchNewsCubit extends Cubit<FetchNewsState>{
  FetchNewsCubit():super(const FetchNewsStateInitial()){
    fetchNewsItems();
  }

  void fetchNewsItems()async{
    emit(const FetchNewsLoadingState());
    try{
    final NewsResponse newsResponse= await ApiService().fetchNews();
    if(newsResponse.newsItems!=null){
      emit(FetchNewsSuccessState(newsResponse: newsResponse));
    }
    else{
      emit(const FetchNewsErrorState());
    }
    }
    catch(e){
      emit(const FetchNewsErrorState());
        }
  }
}