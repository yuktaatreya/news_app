import 'package:flutter/material.dart';
import 'package:news_application/screens/util/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: MediaQuery.of(context).size.width*0.1,
          child: const CircularProgressIndicator(color: AppColors.primaryPurple,)
      ),
    );
  }
}
