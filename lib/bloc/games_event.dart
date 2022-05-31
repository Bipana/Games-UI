part of 'games_bloc.dart';

 class GamesEvent extends Equatable {

   const GamesEvent();

  @override
  List<Object> get props => [];
}

 class GetGames extends GamesEvent {

 const GetGames ({this.page=1});
 final int page;

  @override
  List<Object> get props => [page];
}
