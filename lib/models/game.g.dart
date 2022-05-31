// GENERATED CODE - DO NOT MODIFY BY HAND

part of game;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameView> _$gameViewSerializer = new _$GameViewSerializer();

class _$GameViewSerializer implements StructuredSerializer<GameView> {
  @override
  final Iterable<Type> types = const [GameView, _$GameView];
  @override
  final String wireName = 'GameView';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameView object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'added',
      serializers.serialize(object.added, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GameView deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameViewBuilder();

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
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'added':
          result.added = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GameView extends GameView {
  @override
  final int id;
  @override
  final String slug;
  @override
  final String name;
  @override
  final int added;

  factory _$GameView([void Function(GameViewBuilder)? updates]) =>
      (new GameViewBuilder()..update(updates)).build();

  _$GameView._(
      {required this.id,
      required this.slug,
      required this.name,
      required this.added})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GameView', 'id');
    BuiltValueNullFieldError.checkNotNull(slug, 'GameView', 'slug');
    BuiltValueNullFieldError.checkNotNull(name, 'GameView', 'name');
    BuiltValueNullFieldError.checkNotNull(added, 'GameView', 'added');
  }

  @override
  GameView rebuild(void Function(GameViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameViewBuilder toBuilder() => new GameViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameView &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        added == other.added;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), slug.hashCode), name.hashCode),
        added.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameView')
          ..add('id', id)
          ..add('slug', slug)
          ..add('name', name)
          ..add('added', added))
        .toString();
  }
}

class GameViewBuilder implements Builder<GameView, GameViewBuilder> {
  _$GameView? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _added;
  int? get added => _$this._added;
  set added(int? added) => _$this._added = added;

  GameViewBuilder();

  GameViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _slug = $v.slug;
      _name = $v.name;
      _added = $v.added;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameView other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameView;
  }

  @override
  void update(void Function(GameViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GameView build() {
    final _$result = _$v ??
        new _$GameView._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'GameView', 'id'),
            slug:
                BuiltValueNullFieldError.checkNotNull(slug, 'GameView', 'slug'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'GameView', 'name'),
            added: BuiltValueNullFieldError.checkNotNull(
                added, 'GameView', 'added'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
