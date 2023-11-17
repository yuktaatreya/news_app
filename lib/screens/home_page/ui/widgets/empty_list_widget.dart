import 'package:flutter/material.dart';
import 'package:news_application/screens/util/colors.dart';
import 'package:news_application/screens/util/images.dart';
import 'package:news_application/screens/util/size_util.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({Key? key}) : super(key: key);

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
              "No news items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            )),
      ],
    );
  }
}
