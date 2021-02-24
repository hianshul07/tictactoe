import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  bool isCross = true;
  String message;
  List<String> gameState;

  // Asset images
  AssetImage cross = AssetImage('images/cross.png');
  AssetImage circle = AssetImage('images/circle.png');
  AssetImage edit = AssetImage('images/edit.png');

  // Game state

  @override
  void initState() {
    super.initState();
    setState(() {
      this.gameState = [
        "empty"
            "empty"
            "empty"
            "empty"
            "empty"
            "empty"
            "empty"
            "empty"
            "empty"
      ];
      this.message = ' ';
    });
  }

  // reset game
  resetGame() {
    setState(() {
      this.gameState = [
        "empty"
            "empty"
            "empty"
            "empty"
            "empty"
            "empty"
            "empty"
            "empty"
            "empty"
      ];
      this.message = ' ';
    });
  }

  // image asset calling

  getImage(String value) {
    switch (value) {
      case 'empty':
        return edit;
        break;
      case 'cross':
        return edit;
        break;
      case 'circle':
        return edit;
        break;
    }
  }

  // play game function

  playGame(int index) {
    if (this.gameState[index] == "empty") {
      setState(() {
        if (this.isCross) {
          this.gameState[index] = "cross";
        } else {
          this.gameState[index] = "circle";
        }
        this.isCross = !this.isCross;
        this.checkWin();
      });
    }
  }

  // check win

  checkWin() {
    if ((gameState[0] != 'empty' &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2]))) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
      });
    } else if ((gameState[3] != 'empty') &&
        (gameState[3] == gameState[4]) &&
        gameState[4] == gameState[5]) {
      setState(() {
        this.message = '${this.gameState[3]} wins';
      });
    } else if ((gameState[6] != 'empty') &&
        (gameState[6] == gameState[7]) &&
        gameState[7] == gameState[8]) {
      setState(() {
        this.message = '${this.gameState[6]} wins';
      });
    } else if ((gameState[0] != 'empty') &&
        gameState[0] == gameState[4] &&
        gameState[4] == gameState[8]) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
      });
    } else if ((gameState[2] != 'empty') &&
        gameState[2] == gameState[4] &&
        gameState[4] == gameState[6]) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
      });
    } else if (!gameState.contains('empty')) {
      setState(() {
        this.message = 'Game Draw';
      });
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('TicTacToe'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: null)
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
