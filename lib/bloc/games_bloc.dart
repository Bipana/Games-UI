import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:games/models/listDetails.dart';
import 'package:games/repository/api.dart';

part 'games_event.dart';
part 'games_state.dart';

class GamesBloc extends Bloc<GamesEvent, GamesState> {
  GamesBloc({
    required this.gameRepository,
  }) : super(const GamesInitial()) {
    on<GetGames>(_getGames);
  }
  void _getGames(GetGames event, Emitter<GamesState> emit) async {
    try {
      //emit(const GamesLoading());

      final games = await gameRepository.getResponse(event.page);

      if (state is! GamesSuccess) {
        emit(GamesSuccess(gameList: games, page: event.page));
      } else {
        emit((state as GamesSuccess).copyWith(games: games, page: event.page));
      }
    } catch (error) {
      emit(const GameError(errorMessage: "Something went wrong"));
    }
  }

  final GameRepository gameRepository;
}
