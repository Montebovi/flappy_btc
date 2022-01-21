import 'package:flutter/material.dart';

class FlappyBird extends StatelessWidget {
  final flappyY;
  final double flappyWidth;
  final double flappyHeigth;

  FlappyBird(
      {this.flappyY, required this.flappyHeigth, required this.flappyWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, (2 * flappyY + flappyWidth) / (2 - flappyHeigth)),
      child: Image.asset(
        'lib/images/btc.png',
        width: MediaQuery.of(context).size.height * flappyHeigth / 2,
        height: MediaQuery.of(context).size.height * 3 / 4 * flappyHeigth / 2,
        fit: BoxFit.fill,
      ),
    );
  }
}
