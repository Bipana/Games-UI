library serializers;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:games/models/game.dart';
import 'package:games/models/listDetails.dart';
import 'package:games/models/result.dart';

part 'serializers.g.dart';

@SerializersFor([
  GameView,
  ResultView,
  ListDetails,
])
//adding JSON serialization with Built_value
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
       ..addBuilderFactory(
          const FullType(BuiltList,  [ FullType(GameView)]),
          () => new ListBuilder<GameView>())
          ..addBuilderFactory(
          const FullType(BuiltList,  [ FullType(ResultView)]),
          () => new ListBuilder<ResultView>())
      )
    .build();
