part of 'games_bloc.dart';

abstract class GamesState extends Equatable {
  const GamesState();

  @override
  List<Object> get props => [];
}

class GamesInitial extends GamesState {
  const GamesInitial();
}

class GamesLoading extends GamesState {
  const GamesLoading();
}

class GamesSuccess extends GamesState {
  final ListDetails gameList;
  final int page;

  GamesSuccess copyWith({
    required ListDetails games,
    int? page,
  }) {
    
    //var  count= (gameList.count ?? 0.0) + (games.count ?? 0);
  
    final newGames = gameList.rebuild(
    (p) => p
        ..count //= (gameList.count + games.count)
        ..previous = games.previous
        ..results = gameList.results
            .rebuild((p0) => p0..addAll(games.results))
            .toBuilder(),
    );
    return GamesSuccess(gameList: newGames, page: page ?? this.page);
  }

  const GamesSuccess({required this.gameList, this.page = 1});
  @override
  List<Object> get props => [gameList, page];
}

class GameError extends GamesState {
  final String errorMessage;
  const GameError({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}