import 'package:flutter/material.dart';
import 'package:study_flutter_13_totally01_tictactoe/game_status.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  late List<List<String>> board;
  final bool _playerOneTurn = false;
  final GameStatus _gameStatus = GameStatus.start;

  @override
  void initState() {
    super.initState();
    boardInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void boardInit() {
    board = List.generate(
        3, (index) => List.generate(3, (i) => "", growable: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue[400] as Color,
                Colors.blue[600] as Color,
                Colors.blue[800] as Color,
              ],
            ),
          ),
          child: Stack(
            children: [
              playerDisplayContainer(_playerOneTurn),
              gameGridBoard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget gameGridBoard() {
    late List<Widget> boxes = [];
    for (var i = 1; i <= 3; i++) {
      for (var j = 1; j <= 3; j++) {
        boxes.add(boardBox(i, j, mark: board[i - 1][j - 1]));
      }
    }
    return Center(
      child: GridView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: boxes,
      ),
    );
  }

  Widget boardBox(int x, int y, {String mark = ""}) {
    return GestureDetector(
      onTap: () {
        print("x: $x / y: $y");
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        color: Colors.white70,
        alignment: Alignment.center,
        child: Text(
          mark,
          style: const TextStyle(fontSize: 48),
        ),
      ),
    );
  }

  Widget playerDisplayContainer(bool isPlayerOneTurn) {
    return Container();
  }
}
