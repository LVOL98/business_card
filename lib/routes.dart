import 'package:flutter/cupertino.dart';
import 'package:temp/view/algorithms.dart';
import 'package:temp/view/algorithms/algorithms_master.dart';
import 'package:temp/view/front/front_master.dart';
import 'package:temp/view/home/home_master.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => FrontPageMaster(),
  '/home': (BuildContext context) => HomePageMaster(),
  '/home/algorithms': (BuildContext context) => AlgorithmPageMaster(),
};
