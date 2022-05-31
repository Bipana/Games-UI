// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:games/main.dart';
import 'package:games/models/game.dart';
import 'package:games/models/listDetails.dart';
import 'package:games/models/result.dart';
import 'package:games/repository/api.dart';
//brings in the actual widget for testing.
import 'package:games/ui/header_title.dart';
import 'package:games/ui/home_layout.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';

class MockGameRepository extends Mock implements GameRepository {}

Widget makeTestableWidget() => MaterialApp(home: Image.network(''));
void main() {
  testWidgets('test the text in header title', (WidgetTester tester) async {
    mockNetworkImagesFor(()async{
      //tells which widget to test
    await tester.pumpWidget(
      const MaterialApp(
        home: HeaderTitle(),
      ),
    );
    var text = find.byType(Text);

    //assert
    expect(text, findsWidgets);
    });
    
  });

  //mock GameRepository(to simulate getting data from API in testing).
  MockGameRepository mockGameRepository;
  testWidgets("test loading game api success", (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      mockGameRepository = MockGameRepository();
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

      await tester.pumpWidget(MyApp(
        gameRepository: mockGameRepository,
      ));

      await tester.pump();

      expect(find.byType(GamesSuccessWidget), findsWidgets);
    });
  });

  testWidgets('test loading game api failed', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      mockGameRepository = MockGameRepository();
      when(() => mockGameRepository.getResponse(1))
          .thenThrow(Exception("Couldn't Load"));

      await tester.pumpWidget(MyApp(gameRepository: mockGameRepository));

      await tester.pumpAndSettle();

      expect(find.text('Something went wrong'), findsWidgets);
    });
  });
}