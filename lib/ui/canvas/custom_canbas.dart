import 'package:flutter/material.dart';

class CustomCambas extends StatelessWidget {
  const CustomCambas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 1000,
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _CustomCambas(),
        
      ),

      // color: const Color(0xff615abb),
    );
  }
}

class _CustomCambas extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades
    lapiz.color = const Color(0xff615abb);
    //stroke dibuja la linea
    lapiz.style = PaintingStyle.fill;

// fill dibuja todo el contenido
//    lapiz.style = PaintingStyle.fill;

    lapiz.strokeWidth = 2;

    final path = Path();
    //dibijar con el path y el lapiz
    //linea inderior izquierda
    path.moveTo(100, 385.92);
// path.quadraticBezierTo(
//         size.width * 0.32, size.height * 0.9, size.width * 0.30, size.height * 0.33);
//linea inferior derecha

    path.lineTo(385.92, 500);

// //linea superio dercha
    path.lineTo(388.8, 300);

//

    path.lineTo(288, 360);
  
    
    // path.quadraticBezierTo(
    //            0, size.height * 0.08, size.width * 0.086, size.height * 0.3);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
