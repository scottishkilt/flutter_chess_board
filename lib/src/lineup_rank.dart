import 'package:flutter/material.dart';
import 'package:flutter_chess_board/src/lineup_square.dart';

/// Creates a rank(row) on the chessboard
class LineupBoardRank extends StatelessWidget {
  /// The list of squares in the rank
  final List<String> children;

  LineupBoardRank({this.children});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: children
            .map(
              (squareName) => LineupSquare(squareName: squareName),
            )
            .toList(),
      ),
    );
  }
}
