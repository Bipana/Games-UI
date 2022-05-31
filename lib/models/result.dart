library result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:games/models/game.dart';

part 'result.g.dart';

abstract class ResultView implements Built<ResultView, ResultViewBuilder> {
  // fields go here

  ResultView._();
  int get id;
  String get slug;
  String get name;
  @BuiltValueField(wireName: 'games_count')
  int get gamesCount;
  @BuiltValueField(wireName: 'image_background')
  String? get imageBackground;
  String? get image;
  BuiltList<GameView> get games;

  factory ResultView([updates(ResultViewBuilder b)]) = _$ResultView;

  static Serializer<ResultView> get serializer => _$resultViewSerializer;
}
