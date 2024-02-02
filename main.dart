import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Snowboy(),
    );
  }
}

class Snowboy extends StatelessWidget {
  const Snowboy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomPaint(
        painter: MyPainter(),
        child: Container(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawCircle(Offset(size.width / 2, size.height * 3.7 / 10), 70,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 5.5 / 10), 100,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 7.8 / 10), 120,
        Paint()..color = Colors.white);
    paint.strokeWidth = 2;
    // body
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5 / 10), 5,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5.3 / 10), 5,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5.6 / 10), 5,
        Paint()..color = Colors.black);
    // head
    canvas.drawCircle(Offset(size.width * 5.8 / 10, size.height * 3.2 / 10), 5,
        Paint()..color = Colors.blue);
    canvas.drawCircle(Offset(size.width * 4.6 / 10, size.height * 3.2 / 10), 5,
        Paint()..color = Colors.blue);
    // smile
    canvas.drawCircle(Offset(size.width * 4.6 / 10, size.height * 3.8 / 10), 5,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 4.9 / 10, size.height * 3.9 / 10), 5,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5.3 / 10, size.height * 3.9 / 10), 5,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5.6 / 10, size.height * 3.8 / 10), 5,
        Paint()..color = Colors.black);
    // nose
    final nosePath = Path()
      ..moveTo(size.width * 5.5 / 10, size.height * 3.4 / 10)
      ..lineTo(size.width * 7.9 / 10, size.height * 3.3 / 10)
      ..lineTo(size.width * 5.3 / 10, size.height * 3.5 / 10)
      ..lineTo(size.width * 5.5 / 10, size.height * 3.4 / 10);
    canvas.drawPath(nosePath, Paint()..color = Colors.orange);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
