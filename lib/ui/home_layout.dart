import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games/bloc/games_bloc.dart';

import 'package:games/models/listDetails.dart';
import 'package:games/ui/all_games_page.dart';
import 'package:games/ui/games_widget/games_item.dart';
import 'package:games/ui/header_title.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderTitle(),
          const SizedBox(height: 40.0),
          Flexible(
            child: BlocBuilder<GamesBloc, GamesState>(
              builder: (context, state) {
                if (state is GamesInitial) {
                  return const Text("This is Initial Phase.");
                } else if (state is GamesSuccess) {
                  return GamesSuccessWidget(
                      games: state.gameList, title: "Games By Category");
                } else if (state is GamesLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return const Text(
                    'Something went wrong',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GamesSuccessWidget extends StatelessWidget {
  const GamesSuccessWidget({
    Key? key,
    required this.games,
    required this.title,
  }) : super(key: key);

  final ListDetails games;
  final String title;

  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = ScrollController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: ListView.separated(
            controller: _controller
              ..addListener(() {
                if (_controller.offset ==
                    _controller.position.maxScrollExtent) {
                  var state = context.read<GamesBloc>().state as GamesSuccess;
                  context.read<GamesBloc>()
                    ..add(GetGames(page: state.page + 1));
                }
              }),
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 24.0,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AllGamesPage(game: games.results[index]),
                      ));
                },
                child: GamesItem(
                  game: games.results[index],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 20.0,
            ),
            itemCount: games.results.length,
          ),
        ),
      ],
    );
  }
}