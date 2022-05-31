// GENERATED CODE - DO NOT MODIFY BY HAND

part of data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Data> _$dataSerializer = new _$DataSerializer();

class _$DataSerializer implements StructuredSerializer<Data> {
  @override
  final Iterable<Type> types = const [Data, _$Data];
  @override
  final String wireName = 'Data';

  @override
  Iterable<Object?> serialize(Serializers serializers, Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'first_name',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'avatar',
      serializers.serialize(object.avatar,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Data deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Data extends Data {
  @override
  final int id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String avatar;

  factory _$Data([void Function(DataBuilder)? updates]) =>
      (new DataBuilder()..update(updates)).build();

  _$Data._(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Data', 'id');
    BuiltValueNullFieldError.checkNotNull(email, 'Data', 'email');
    BuiltValueNullFieldError.checkNotNull(firstName, 'Data', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, 'Data', 'lastName');
    BuiltValueNullFieldError.checkNotNull(avatar, 'Data', 'avatar');
  }

  @override
  Data rebuild(void Function(DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataBuilder toBuilder() => new DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Data &&
        id == other.id &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), email.hashCode), firstName.hashCode),
            lastName.hashCode),
        avatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Data')
          ..add('id', id)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('avatar', avatar))
        .toString();
  }
}

class DataBuilder implements Builder<Data, DataBuilder> {
  _$Data? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  DataBuilder();

  DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Data;
  }

  @override
  void update(void Function(DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Data build() {
    final _$result = _$v ??
        new _$Data._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Data', 'id'),
            email:
                BuiltValueNullFieldError.checkNotNull(email, 'Data', 'email'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, 'Data', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'Data', 'lastName'),
            avatar: BuiltValueNullFieldError.checkNotNull(
                avatar, 'Data', 'avatar'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
