import 'package:flutter/material.dart';

class PlayerTwoDisplay extends StatelessWidget {
  bool isMyTurn = true;
  PlayerTwoDisplay(this.isMyTurn, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        isMyTurn ? "Player 2 (X) 차례" : "Player 2 (X)",
        style: TextStyle(
          color: isMyTurn ? Colors.amberAccent : Colors.white,
          fontWeight: isMyTurn ? FontWeight.bold : FontWeight.normal,
          fontSize: 18,
        ),
      ),
    );
  }
}
