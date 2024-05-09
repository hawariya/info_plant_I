import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class IntroCurve extends CustomClipper<Path>{
  
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 414;
    final double yScaling = size.height / 896;
    path.lineTo(206.99200000000002 * xScaling,202.94199999999998 * yScaling);
    path.cubicTo(206.99200000000002 * xScaling,202.94199999999998 * yScaling,230.457 * xScaling,181.576 * yScaling,278.549 * xScaling,181.576 * yScaling,);
    path.cubicTo(326.641 * xScaling,181.576 * yScaling,349.213 * xScaling,244.541 * yScaling,410.291 * xScaling,237.517 * yScaling,);
    path.cubicTo(471.369 * xScaling,230.493 * yScaling,489.66200000000003 * xScaling,211.254 * yScaling,545.404 * xScaling,211.254 * yScaling,);
    path.cubicTo(601.146 * xScaling,211.254 * yScaling,620.992 * xScaling,290.528 * yScaling,620.992 * xScaling,290.528 * yScaling,);
    path.cubicTo(620.992 * xScaling,290.528 * yScaling,620.992 * xScaling,544.727 * yScaling,620.992 * xScaling,544.727 * yScaling,);
    path.cubicTo(620.992 * xScaling,544.727 * yScaling,206.99200000000002 * xScaling,544.727 * yScaling,206.99200000000002 * xScaling,544.727 * yScaling,);
    path.cubicTo(206.99200000000002 * xScaling,544.727 * yScaling,206.99200000000002 * xScaling,202.94199999999998 * yScaling,206.99200000000002 * xScaling,202.94199999999998 * yScaling,);
    path.cubicTo(206.99200000000002 * xScaling,202.94199999999998 * yScaling,206.99200000000002 * xScaling,202.94199999999998 * yScaling,206.99200000000002 * xScaling,202.94199999999998 * yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
