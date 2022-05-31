library game;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'game.g.dart';

abstract class GameView implements Built<GameView, GameViewBuilder> {
  // fields go here

  GameView._();
  int get id;
  String get slug;
  String get name;
  int get added;

  factory GameView([updates(GameViewBuilder b)]) = _$GameView;
  static Serializer<GameView> get serializer => _$gameViewSerializer;
}
