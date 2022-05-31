import 'package:flutter/material.dart';
import 'package:games/bloc/games_bloc.dart';
import 'package:games/repository/api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games/ui/home_page.dart';

void main() {
  runApp(buildApp()
  
  );
}

Widget buildApp(){
final gameRepository = GameRepository();
return MyApp(
  gameRepository: gameRepository,
);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key ,required this.gameRepository }) : super(key: key);
final GameRepository gameRepository;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  //declare a variable and pull the instance declare in the main from within GetIt.
  
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => widget.gameRepository,
      child: Builder(
        builder: (context) {
          return BlocProvider<GamesBloc>(
            create: (BuildContext context) => GamesBloc(
              gameRepository: context.read<GameRepository>(),
            )..add(const GetGames()),
            child: MaterialApp(
              title: 'Games',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(primarySwatch: Colors.amber),
              home: const HomePage(), 
            ),
          );
        },
      ),
    );
  }
}