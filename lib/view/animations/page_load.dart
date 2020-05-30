import 'package:flutter/cupertino.dart';

class PageLoad extends PageRouteBuilder {
  final Widget page;
  PageLoad({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            var begin = Offset(0.0, 1.0);
            var end = Offset.zero;
            var curveTween = Curves.ease;
            var tween = Tween(begin: begin, end: end)
                .chain(CurveTween(curve: curveTween));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
}
