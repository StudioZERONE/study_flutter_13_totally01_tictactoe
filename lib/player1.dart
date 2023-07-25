import 'package:flutter/material.dart';

class PlayerOneDisplay extends StatelessWidget {
  bool isMyTurn = true;
  PlayerOneDisplay(this.isMyTurn, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        isMyTurn ? "Player 1 (0) 차례" : "Player 1 (0)",
        style: TextStyle(
          color: isMyTurn ? Colors.amberAccent : Colors.white,
          fontWeight: isMyTurn ? FontWeight.bold : FontWeight.normal,
          fontSize: 18,
        ),
      ),
    );
  }
}
