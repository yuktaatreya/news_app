import 'package:flutter/cupertino.dart';

class SizeUtil{
  final BuildContext context;
  SizeUtil({required this.context});
  double get height =>MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
}