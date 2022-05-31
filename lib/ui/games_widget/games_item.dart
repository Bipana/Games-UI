import 'package:flutter/material.dart';
import 'package:games/models/result.dart';
import 'package:games/ui/games_widget/games_item_image.dart';
class GamesItem extends StatelessWidget {
  const GamesItem({ Key? key, required this.game, }) : super(key: key);

  final ResultView game;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20.0,
            top: 15.0,
            bottom: 15.0,
            child: GameItemImage(
              backgroundImage:game.imageBackground.toString(),
            ),
          ),
          Positioned(
            top: 25.0,
            left: 100.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                game.name.toString(),
                style:const  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}