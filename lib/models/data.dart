library data;


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'data.g.dart';

abstract class Data implements Built<Data, DataBuilder> {
  // fields go here

  Data._();

  int get id;
  String get email;
  @BuiltValueField(wireName: 'first_name')
  String  get firstName;
  @BuiltValueField(wireName: 'last_name')
  String  get lastName;
  String get avatar;
  factory Data([updates(DataBuilder b)]) = _$Data;

  static Serializer<Data> get serializer => _$dataSerializer;
}