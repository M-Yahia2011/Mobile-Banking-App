import 'package:flutter/material.dart';
class TopLogoBar extends StatelessWidget {
  const TopLogoBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff7b104a),
                Color(0xff522052),
                // Color(0xff312651),
                Color(0xff21284e)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        CustomPaint(
          painter: Trapezoid(),
          child: Container(
            width: 150,
            height: 60,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                // margin: EdgeInsets.symmetric(vertical: 15),
                width: 100,
                height: 60,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Trapezoid extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    // path.quadraticBezierTo(size.width / 1.5, size.height, size.width, 0);
    path.lineTo(size.width / 2, size.height);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
