import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_application/screens/home_page/data/news_response.dart';
import 'package:news_application/screens/util/app_route.dart';
import 'package:news_application/screens/util/colors.dart';
import 'package:news_application/screens/util/images.dart';
import 'package:news_application/screens/util/size_util.dart';

class NewsItemWidget extends StatelessWidget {
  final NewsDetails newsDetails;
  const NewsItemWidget({Key? key, required this.newsDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(
            horizontal: SizeUtil(context: context).width * 0.05,
            vertical: SizeUtil(context: context).height * 0.03),
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeUtil(context: context).width * 0.05,right:SizeUtil(context: context).width * 0.05,
              top: SizeUtil(context: context).height * 0.02,bottom: SizeUtil(context: context).height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 5),
                    child: SvgPicture.asset(
                      Images.newsIcon,
                      color: AppColors.primaryPurple,
                      height: SizeUtil(context: context).height * 0.02,
                      width: SizeUtil(context: context).width * 0.02,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      newsDetails.title ?? '',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, height: 1.2,),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtil(context: context).height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(left:SizeUtil(context: context).width * 0.07),
                child: Text(
                  "${(newsDetails.body ?? '').substring(0, 50)}...",
                  style:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  height: SizeUtil(context: context).height * 0.02,
                  width: SizeUtil(context: context).width * 0.02,
                  Images.nextIcon,color: AppColors.primaryPurple,
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
