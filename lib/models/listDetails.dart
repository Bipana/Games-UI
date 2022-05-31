library listDetails;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:games/models/result.dart';

part 'listDetails.g.dart';

abstract class ListDetails implements Built<ListDetails, ListDetailsBuilder> {
  //fields go here

  ListDetails._();
  int? get count;
  String? get next;
  String? get previous;
  BuiltList<ResultView> get results;

  factory ListDetails([updates(ListDetailsBuilder b)]) = _$ListDetails;
  static Serializer<ListDetails> get serializer => _$listDetailsSerializer;
}