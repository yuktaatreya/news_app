import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_application/screens/util/app_strings.dart';
import 'package:news_application/screens/util/colors.dart';
import 'package:news_application/screens/util/images.dart';
import 'package:news_application/screens/util/size_util.dart';

class NewsErrorWidget extends StatelessWidget {
  final VoidCallback? retry;
  const NewsErrorWidget({Key? key, this.retry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: SizeUtil(context: context).height * 0.35,
        ),
        Image.asset(
          height: SizeUtil(context: context).height * 0.05,
          width: SizeUtil(context: context).width * 0.05,
          Images.errorIcon,
          color: AppColors.primaryPurple,
        ),
        const Center(
            child: Text(
          AppStrings.errorMessage,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
        )),
        Container(
          margin:
              EdgeInsets.only(top: SizeUtil(context: context).height * 0.05),
          decoration: const BoxDecoration(
              color: AppColors.primaryPurple,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TextButton(
              onPressed: retry,
              child: const Text(AppStrings.retryCtaText,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white))),
        )
      ],
    );
  }
}
