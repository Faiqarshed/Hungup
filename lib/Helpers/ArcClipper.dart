import 'package:flutter/cupertino.dart';

class ArcClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);

    // First smooth arc
    path.quadraticBezierTo(
      size.width * 0.25, size.height,
      size.width * 0.5, size.height - 40,
    );

    // Second smooth arc
    path.quadraticBezierTo(
      size.width * 0.75, size.height - 80,
      size.width, size.height - 20,
    );

    // Close the path at the top
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}