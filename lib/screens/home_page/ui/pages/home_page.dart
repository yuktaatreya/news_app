import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/screens/home_page/bloc/fetch_news_items_cubit.dart';
import 'package:news_application/screens/home_page/bloc/fetch_news_items_state.dart';
import 'package:news_application/screens/home_page/ui/widgets/empty_list_widget.dart';
import 'package:news_application/screens/home_page/ui/widgets/news_item_widget.dart';
import 'package:news_application/screens/util/app_strings.dart';
import 'package:news_application/screens/util/widgets/error_widget.dart';
import 'package:news_application/screens/util/widgets/loading_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(AppStrings.homePageAppBarTitleText)),
        automaticallyImplyLeading: false,),
      body: BlocProvider<FetchNewsCubit>(
          create: (context)=>FetchNewsCubit(),
        child: BlocConsumer<FetchNewsCubit,FetchNewsState>(
          listener: (context,state){},
          builder: (context,state){
            if(state is FetchNewsSuccessState){
              if(state.newsResponse.newsItems!=null && (state.newsResponse.newsItems??[]).isNotEmpty) {
                return ListView.builder(
                  itemCount: state.newsResponse.newsItems!.length,
                    itemBuilder: (context, index) {
                  return NewsItemWidget(
                      newsDetails: state.newsResponse.newsItems![index]);
                });
              }
              else {
                return const EmptyListWidget();
              }
            }
            else if(state is FetchNewsErrorState){
              return NewsErrorWidget(retry: ()=>context.read<FetchNewsCubit>().fetchNewsItems(),);
            }
            else{
              return const LoadingWidget();
            }

          },
        ),
      ),
    );
  }
}
