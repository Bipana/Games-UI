import 'package:flutter/material.dart';
import 'package:games/models/game.dart';
import 'package:games/models/result.dart';

class AllGamesPage extends StatelessWidget {
  const AllGamesPage({Key? key, required this.game}) : super(key: key);

  final ResultView game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 219, 216),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24.0),
          ),
          Image.network(game.imageBackground.toString()),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ALLGamesItem(
                  games: game.games[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 20.0,
              ),
              itemCount: game.games.length,
            ),
          )
        ],
      ),
    );
  }
}

class ALLGamesItem extends StatefulWidget {
  const ALLGamesItem({Key? key, required this.games}) : super(key: key);

  final GameView games;

  @override
  State<ALLGamesItem> createState() => _ALLGamesItemState();
}

class _ALLGamesItemState extends State<ALLGamesItem> {
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
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
            image: NetworkImage(
            'https://cdn2.myminifactory.com/assets/object-assets/5f435a90d22ba/images/720X720-viper-avatar.jpg',
              
            ),
            fit: BoxFit.cover,
          ),
              ),
            ),
          ),
          Positioned(
            top: 25.0,
            left: 100.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                widget.games.name.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 25.0,
            right: 20,
            child: Icon(Icons.download),
          )
        ],
      ),
    );
  }
}