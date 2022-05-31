import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:games/bloc/games_bloc.dart';
import 'package:games/models/game.dart';
import 'package:games/models/listDetails.dart';
import 'package:games/models/result.dart';
import 'package:games/repository/api.dart';
import 'package:mocktail/mocktail.dart';

class MockGameRepository extends Mock implements GameRepository {}

void main() {
  group("GamesBloc test", () {
    final mockGameRepository = MockGameRepository();
    blocTest(
      'emit [] when nothing is loaded',
      build: () => GamesBloc(gameRepository: mockGameRepository),
      expect: () => [],
    );

    when(() => mockGameRepository.getResponse(1)).thenAnswer((value) async {
      return (ListDetailsBuilder()
            ..count = 1
            ..results = ListBuilder<ResultView>([
              (ResultViewBuilder()
                    ..id = 4
                    ..slug = "PC"
                    ..gamesCount = 423931
                    ..name = "PC"
                    ..games = ListBuilder<GameView>([
                      (GameViewBuilder()
                            ..id = 3498
                            ..slug = "grand-theft-auto-v"
                            ..name = "Grand Theft Auto V"
                            ..added = 16995)
                          .build()
                    ]))
                  .build()
            ]))
          .build();
    });
    blocTest<GamesBloc, GamesState>('emit list of games when games are loaded ',
        build: () => GamesBloc(gameRepository: mockGameRepository),
        act: (bloc) => bloc.add(const GetGames()),
        expect: () => [
              GamesSuccess(
                  gameList: (ListDetailsBuilder()
                        ..count = 1
                        ..results = ListBuilder<ResultView>([
                          (ResultViewBuilder()
                                ..id = 4
                                ..slug = "PC"
                                ..gamesCount = 423931
                                ..name = "PC"
                                ..games = ListBuilder<GameView>([
                                  (GameViewBuilder()
                                        ..id = 3498
                                        ..slug = "grand-theft-auto-v"
                                        ..name = "Grand Theft Auto V"
                                        ..added = 16995)
                                      .build()
                                ]))
                              .build()
                        ]))
                      .build(),
                  page: 1)
            ]);
  });

  // group('Games bloc test', () {
  //    final mockGameRepository = MockGameRepository();
  //    when(() => mockGameRepository.getResponse(1)).thenThrow(throwable)
  // } );
}


// blocTest<GamesBloc, GamesState>(
//       "show error message when there is error in loading games",
//       build: () => GamesBloc(gameRepository: mockGameRepository),
//       act: (bloc) => bloc.add(const GetGames()),
//       expect: () => [const GameError(errorMessage: "Something went wrong")],
//     );